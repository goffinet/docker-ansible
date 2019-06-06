# docker base image for Netmiko, NAPALM, Pyntc, and Ansible

FROM ubuntu:bionic

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping python build-essential \
    libssl-dev libffi-dev python-pip python3-pip python-setuptools \
    python-dev net-tools python3 software-properties-common \
    git \
    && apt-add-repository -y ppa:ansible/ansible-2.8 \
    && apt-get update && apt-get -y --no-install-recommends install ansible \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --upgrade pip \
    && pip install cryptography netmiko napalm pyntc \
    && pip install --upgrade paramiko \
    && mkdir /scripts

VOLUME [ "/root","/usr", "/scripts" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
