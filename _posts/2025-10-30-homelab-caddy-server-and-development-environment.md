---
title: Homelab Caddy Server and Development Environment
date: 2025-10-30 19:07:41 Z
description: ''
preview: ''
layout: post
---

## Stack

1. https://caddyserver.com/
2. Install git `apt install git -y` and generate ssh key and add to gitlab


```shell
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N '' -C "$(whoami)@$(hostname)"
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIau6lzsGUjetXriJlns7NZlYxtsdOPLaeCf19p0lpWx root@caddy" | glab ssh-key add -t "caddy-server" -
ssh git@gitlab.com || true
```

3. <https://devenv.sh/>
4. <https://direnv.net/>
5. <https://secretspec.dev/quick-start/> `brew install secretspec`
6. Zot Docker Registry

<https://community-scripts.github.io/ProxmoxVE/scripts?id=zot>
<https://zotregistry.dev/v2.1.10/>

6. Recovered ArgoCD deployment. <https://argo-cd.readthedocs.io>
7. MicroK8S <https://microk8s.io/>

## `devenv.nix`

```nix
{
  pkgs,
  lib,
  config,
  ...
}:
{
  # https://devenv.sh/services/
  services.caddy.enable = true;

  services.caddy.config = ''
  # Global options block
  {
    debug
  }

  # Site block
  :8080 {
    # encode gzip
    # log
    # root /srv/http

	# Set this path to your site's directory.
	root * /srv/usr/share/caddy

	# Enable the static file server.
	file_server
  }

'';

  # See full reference at https://devenv.sh/reference/options/
}

```


## `.envrc`

```.envrc
#!/usr/bin/env bash

eval "$(devenv direnvrc)"

# You can pass flags to the devenv command
# For example: use devenv --impure --option services.postgres.enable:bool true
use devenv
devenv up
echo "Hello!"
```


## `secretspec.toml`

```toml
[project]
name = "homelab"
revision = "1.0"
# Extend configurations from subdirectories
# extends = [ "subdir1", "subdir2" ]

[profiles.default]
CLOUDFLARE_API_TOKEN = { description = "CLOUDFLARE_API_TOKEN secret", required = true }
# DATABASE_URL = { description = "Database connection string", required = true }

[profiles.development]
# Development profile inherits all secrets from default profile
# Only define secrets here that need different values or settings than default
# DATABASE_URL = { default = "sqlite:///dev.db" }
#
# New secrets
# REDIS_URL = { description = "Redis connection URL for caching", required = false, default = "redis://localhost:6379" }

```


## Caddy LXC Container

1. Install caddy to debian/ubuntu LXC container
   - Install cloudflare package

```
caddy add-package github.com/caddy-dns/cloudflare
```

2. Execute ssh-copy-id
3. Update ssh-config
4. Install vim
5. Install tailscale with:

```shell
curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up --auth-key=tskey-auth-kneiuQ38KY11CNTRL-9h1sQTr368F6wyrQTr368FGCAhkxG7d92
curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up --auth-key=tskey-auth-xxxxxxxxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

6. Tailscale does not play well with unpriviledged LXC containers. Follow: <https://tailscale.com/kb/1130/lxc-unprivileged>


Append these lines to config:

`vim vim /etc/pve/lxc/<VMID>.conf"`


```
lxc.cgroup2.devices.allow: c 10:200 rwm
lxc.mount.entry: /dev/net/tun dev/net/tun none bind,create=file
```

