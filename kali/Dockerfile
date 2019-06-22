# docker base image for GNS3

FROM kalilinux/kali-linux-docker

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
    telnet curl openssh-client vim-tiny iputils-ping python \
    libssl-dev libffi-dev python-pip python3-pip python-setuptools \
    net-tools git metasploit-framework cisco-global-exploiter cisco-auditing-tool \
    nmap hydra sqlmap telnet openssh-client dnsutils yersinia ettercap-text-only \
    snmp dsniff fping hping3 tshark python-scapy \
    nload ifstat iftop traceroute thc-ipv6 arp-scan wget \
    netrw netcat cryptcat gnupg screen \
		cisco-global-exploiter cisco-auditing-tool metasploit-framework \
    && echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 \
    && apt-get update && apt-get -y --no-install-recommends install ansible \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /scripts

VOLUME [ "/root","/usr", "/scripts" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
