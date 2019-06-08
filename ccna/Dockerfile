# docker base image for GNS3

FROM ubuntu:bionic

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
    telnet curl openssh-client nano vim-tiny iputils-ping python build-essential \
    libssl-dev libffi-dev python-pip python3-pip python-setuptools \
    python-dev net-tools python3 software-properties-common git \
    nmap hydra sqlmap telnet openssh-client dnsutils yersinia ettercap-text-only \
    snmp dsniff fping hping3 tshark python-scapy jq \
    nload ifstat iftop traceroute thc-ipv6 arp-scan wget \
    netrw netcat cryptcat \
    && apt-add-repository -y ppa:ansible/ansible-2.8 \
    && apt-get update && apt-get -y --no-install-recommends install ansible \
    && rm -rf /var/lib/apt/lists/* \
    && pip install cryptography netmiko napalm pyntc \
    && pip install --upgrade paramiko \
    && mkdir /scripts

VOLUME [ "/root","/usr", "/scripts" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
