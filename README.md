# Ansible Role: kibana

[![Build Status](https://travis-ci.org/apolloclark/ansible-role-kibana.svg?branch=master)](https://travis-ci.org/apolloclark/ansible-role-kibana)

Ansible Role to install and configure Elastic Kibana for:
- Ubuntu 18.04 Bionic LTS
- Ubuntu 16.04 Xenial LTS
- Debian 10 Buster
- Debian 9 Stretch
- RHEL 8 UBI
- RHEL 7 UBI
- CentOS 7
- Amazon Linux 2

## Requirements

None.

## Role Variables

Default values are in `defaults/main.yml`. You can overload the variables by
creating a dictionary called "kibana", ex:

    kibana:
      version: 7.3.0

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
        - apolloclark.kibana

## License

MIT / BSD

## Author Information

This role was created in 2017 by [Apollo Clark](https://www.apolloclark.com/)
