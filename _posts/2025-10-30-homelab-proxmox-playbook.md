---
title: Homelab Proxmox Playbook
description: ""
date: 2025-10-30T09:41:59.451Z
preview: ""
tags:
    - proxmox
    - pve
categories: []
layout: post
---

I've second major incident that caused losing my access to one of my homelab proxmox server.

The server was running on windows hyper-v, checkpoints enabled and having offsite backup on another machine.


**Root Cause**

Not exactly sure about the root cause but most likely **"Updating the network driver update on hyper-v"** is the accused action.

Timeline:

1. started the network driver update while the proxmox server is running on hyper-v
2. lost the RDP connection on hyper-v machine
3. lost the connection to Proxmox machine
4. connected Windows Hyper-V machine and tried pinging my gateway. It was working but with %50 packet drop
5. restarted Windows machine, packet drop issues resolved.
6. tried troubleshooting the issue, detected the Proxmox SQlite db has been corrupted, fixed it, recovered web UI access
7. tried reverting to hyper-v checkpoints, web UI now shows the VMs and they were running and they were connected to tailscale network



I've lost the machine connection just after updating network driver on windows, and could not recover.

Not sure if it is related this driver update, but it seems that the sqlite database was corrupted. Able to restore it with the help of gemini. But could not restore the connection between the second node due to some TLS issue. The sqlite was storing the TLS keys.

So, I've decided create a fresh proxmox installation name `freshmox.local`.

Here the steps post-intall:

1. Copy ssh id: `ssh-copy-id root@192.168.1.98`
2. Executed community post-install script

<https://community-scripts.github.io/ProxmoxVE/scripts?id=post-pve-install&category=Proxmox+%26+Virtualization>


    bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/tools/pve/post-pve-install.sh)"


Actions:

    ✓ Disabled 'pve-enterprise' repository
    ✓ Disabled 'ceph enterprise' repository
    ✓ Added 'pve-no-subscription' repository
    ✓ 'ceph' package repository (no-subscription) already exists (skipped)
    ✓ Added 'pve-test' repository
    ✓ Disabled subscription nag (Delete browser cache)
    ✓ Disabled high availability
    ✓ Disabled Corosync
    - Updating Proxmox VE (Patience)...

3. Setup connection with Proxmox Backup Server to restore VMs and containers.


---



Attemps to reanimate the proxmox installation:

1. Recovered the sqlite database to access web ui
2. Tried to revert a hyper-v checkpoints, but no luck. Now I was seeing the VMs, some of them was running. I was able to drop to shell via web UI.


```
---
Source: <https://gemini.google.com/app/cca898d54ba1f46d>
Author: [[Gemini]]
---
```


## 💥 Cluster Database Malformed Error

The error "database disk image is malformed" almost certainly means the **Proxmox Cluster Filesystem (pmxcfs)** configuration database, which is a SQLite database, is corrupted. This database stores all your cluster and VM/container configuration (`/etc/pve`).

Since you were already troubleshooting `pve-cluster` failure, this is the root cause. When this database is corrupted, `pve-cluster` fails to start, which in turn prevents the Web UI (`pveproxy`) from running and loading the SSL keys.

Here is the procedure to fix this by attempting to repair the database or, if necessary, replacing it with a backup. **Run all these commands on the node where you currently have SSH access.**

---

### 1. 🛑 Stop Proxmox Cluster Services

You need to completely stop the services that access the database.

```shell
systemctl stop pve-cluster
systemctl stop corosync
```

### 2\. 🔍 Check for Hanging Processes

Ensure no `pmxcfs` processes are still running and holding the database lock.


```shell
killall pmxcfs
```


### 3\. 💾 Backup the Corrupt Database

It is critical to back up the current state before attempting any changes.


```shell
cp /var/lib/pve-cluster/config.db /var/lib/pve-cluster/config.db.BAK_$(date +%Y%m%d)
```

### 4\. 🛠️ Attempt to Repair the Database

We can use the `sqlite3` tool to check and attempt to repair the database.

1. **Open the database:**

```shell
sqlite3 /var/lib/pve-cluster/config.db
```

**Run an Integrity Check:** In the `sqlite>` prompt, run:


```sql
PRAGMA integrity_check;
```


- **If the output is `ok`**, the corruption might be minor or transient. Proceed to Step 5.
- **If the output is NOT `ok`** (e.g., lists errors), proceed to Step 4-B.

```sql
.quit
```

### 4-B. ♻️ Database Recovery (If Integrity Check Fails)

If the integrity check failed, you need to export the working parts of the database and import them into a fresh one.

1. **Export the database content (creates a dump file):**

```shell
sqlite3 /var/lib/pve-cluster/config.db ".dump" > /root/pve_config_dump.sql
```

2. **Delete the corrupted database:**

```shell
rm /var/lib/pve-cluster/config.db
```


3. **Create a new database from the dump file:**

```shell
sqlite3 /var/lib/pve-cluster/config.db ".read /root/pve_config_dump.sql"
```


4. **Check the new database (optional but recommended):**

```shell
sqlite3 /var/lib/pve-cluster/config.db "PRAGMA integrity_check;"
```

5. **🚀 Restart and Verify**

Now that the database is repaired or replaced, restart the services.

Start the Cluster Filesystem:

    systemctl start pve-cluster

Check Status (must be active):

    systemctl status pve-cluster

It should now show active (running).

Force Quorum (crucial for multi-node clusters):

    pvecm expected 1

Restart Web Services:


    systemctl restart pveproxy pvedaemon


