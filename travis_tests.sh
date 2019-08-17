#!/bin/bash -eux

rm -f Pipfile*
pipenv --rm || true
pipenv install -r test-requirements.txt --python 2.7

# set the package name
export PACKAGE=kibana
export PACKAGE_VERSION=7.3.0

# RHEL 8
export DOCKER_IMAGE_BASE=apolloclark/ubi8:8
export DOCKER_INST_NAME_SUFFIX=rhel_8
pipenv run molecule test --all

# RHEL 7
export DOCKER_IMAGE_BASE=apolloclark/ubi7:7
export DOCKER_INST_NAME_SUFFIX=rhel_7
pipenv run molecule test --all

# CentOS 7
export DOCKER_IMAGE_BASE=centos:7
export DOCKER_INST_NAME_SUFFIX=centos_7
pipenv run molecule test --all

# Amazon Linux 2
export DOCKER_IMAGE_BASE=amazonlinux:2
export DOCKER_INST_NAME_SUFFIX=amzlinux_2
pipenv run molecule test --all

# Ubuntu Bionic
export DOCKER_IMAGE_BASE=ubuntu:18.04
export DOCKER_INST_NAME_SUFFIX=ubuntu_18.04
pipenv run molecule test --all

# Ubuntu Xenial
export DOCKER_IMAGE_BASE=ubuntu:16.04
export DOCKER_INST_NAME_SUFFIX=ubuntu_16.04
pipenv run molecule test --all

# Debian 10 Buster
export DOCKER_IMAGE_BASE=debian:10
export DOCKER_INST_NAME_SUFFIX=debian_10
pipenv run molecule test --all

# Debian 9 Stretch
export DOCKER_IMAGE_BASE=debian:9
export DOCKER_INST_NAME_SUFFIX=debian_9
pipenv run molecule test --all
