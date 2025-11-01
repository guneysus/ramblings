---
title: Homelab Proxmox Playbook
date: 2025-10-30 09:41:59 Z
tags:
- proxmox
- pve
description: ''
preview: ''
layout: post
---

I had a second major incident that caused me to lose access to one of my homelab Proxmox servers.

The server was running on Windows Hyper-V, with checkpoints enabled and an offsite backup on another machine.


**Root Cause**

Not exactly sure about the root cause, but most likely **"updating the network driver on Hyper-V"** is the suspected action.

Timeline:

1. Started the network driver update while the Proxmox server was running on Hyper-V.
2. Lost the RDP connection to the Hyper-V machine.
3. Lost the connection to the Proxmox machine.
4. Connected to the Windows Hyper-V machine and tried pinging my gateway. It was working but with 50% packet loss.
5. Restarted the Windows machine; packet loss issues were resolved.
6. Tried troubleshooting the issue, detected that the Proxmox SQLite DB had been corrupted, fixed it, and recovered web UI access.
7. Tried reverting to Hyper-V checkpoints. The web UI now showed the VMs, they were running, and they were connected to the Tailscale network.


I lost the machine connection just after updating the network driver on Windows and could not recover it.

Not sure if it was related to this driver update, but it seems that the SQLite database was corrupted. I was able to restore it with the help of Gemini but could not restore the connection between the second node due to a TLS issue. The SQLite database was storing the TLS keys.

So, I decided to create a fresh Proxmox installation named `freshmox.local`.

Here are the steps post-install:

1. Copy SSH ID: `ssh-copy-id root@192.168.1.98`
2. Execute the community post-install script

<https://community-scripts.github.io/ProxmoxVE/scripts?id=post-pve-install&category=Proxmox+%26+Virtualization>

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/tools/pve/post-pve-install.sh)"
```

Actions:

    ✓ Disabled 'pve-enterprise' repository
    ✓ Disabled 'ceph enterprise' repository
    ✓ Added 'pve-no-subscription' repository
    ✓ 'ceph' package repository (no-subscription) already exists (skipped)
    ✓ Added 'pve-test' repository
    ✓ Disabled subscription nag (delete browser cache)
    ✓ Disabled high availability
    ✓ Disabled Corosync
    - Updating Proxmox VE (patience)...

3. Set up the connection with the Proxmox Backup Server to restore VMs and containers.


---


Attempts to reanimate the Proxmox installation:

1. Recovered the SQLite database to access the web UI.
2. Tried to revert a Hyper-V checkpoint, but no luck. Now I could see the VMs; some of them were running. I was able to drop to the shell via the web UI.


```
---
Source: <https://gemini.google.com/app/cca898d54ba1f46d>
Author: [[Gemini]]
---
```


## 💥 Cluster Database Malformed Error

The error "database disk image is malformed" almost certainly means the **Proxmox Cluster Filesystem (pmxcfs)** configuration database, which is a SQLite database, is corrupted. This database stores all your cluster and VM/container configuration (`/etc/pve`).

Since you were already troubleshooting a `pve-cluster` failure, this is the root cause. When this database is corrupted, `pve-cluster` fails to start, which in turn prevents the web UI (`pveproxy`) from running and loading the SSL keys.

Here is the procedure to fix this by attempting to repair the database or, if necessary, replacing it with a backup. **Run all these commands on the node where you currently have SSH access.**

---

### 1. 🛑 Stop Proxmox Cluster Services

You need to completely stop the services that access the database.

```shell
systemctl stop pve-cluster
systemctl stop corosync
```

### 2. 🔍 Check for Hanging Processes

Ensure no `pmxcfs` processes are still running and holding the database lock.

```shell
killall pmxcfs
```

### 3. 💾 Back Up the Corrupt Database

It is critical to back up the current state before attempting any changes.

```shell
cp /var/lib/pve-cluster/config.db /var/lib/pve-cluster/config.db.BAK_$(date +%Y%m%d)
```

### 4. 🛠️ Attempt to Repair the Database

We can use the `sqlite3` tool to check and attempt to repair the database.

1. **Open the database:**

```shell
sqlite3 /var/lib/pve-cluster/config.db
```

**Run an integrity check:** In the `sqlite>` prompt, run:

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

Check status (must be active):

    systemctl status pve-cluster

It should now show active (running).

Force quorum (crucial for multi-node clusters):

    pvecm expected 1

Restart web services:

    systemctl restart pveproxy pvedaemon
