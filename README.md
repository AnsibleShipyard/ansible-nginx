ansible-nginx
==============

Nginx Playbook for Ansible + [nginx-init-ubuntu](https://github.com/JasonGiedymin/nginx-init-ubuntu)

This playbook will install Nginx + nginx-init-ubuntu.

## Variables
When using the ansible role mentioned above you will need to set
`nginx_docker_override` to `True` as the role will detect if running within a
Dockerfile. This is to prevent nginx running in `daemon` mode.

## Init Script: nginx-init-ubuntu
A copy of [nginx-init-ubuntu](https://github.com/JasonGiedymin/nginx-init-ubuntu)
is present in the [ansible role](https://github.com/AnsibleShipyard/ansible-nginx)
role. The role has code commented out which will use this copy. By default the
role will try to download master. If this is not desired, you will have to set
the variable `nginx_use_local_init` to true. Like so:

```yaml
nginx_use_local_init: True
```

Support open source!
