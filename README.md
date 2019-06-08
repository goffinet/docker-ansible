# docker-ccna

On trouvera ici des "Dockerfile" d'images Docker utilisées avec GNS3
dans des labs Cisco.

* `goffinet/ccna:latest` : image basée Ubuntu Bionic (893MB)
* `goffinet/ccna:kali` : image Kali Linux (3.31GB)

Logiciel installés :

telnet curl openssh-client nano vim-tiny iputils-ping python build-essential
libssl-dev libffi-dev python-pip python3-pip python-setuptools
python-dev net-tools python3 software-properties-common git
nmap hydra sqlmap telnet openssh-client dnsutils yersinia ettercap-text-only
snmp dsniff fping hping3 tshark python-scapy jq
nload ifstat iftop traceroute thc-ipv6 arp-scan wget
netrw netcat cryptcat
ansible

L'image `ccna:kali` comprend aussi :

cisco-global-exploiter cisco-auditing-tool metasploit-framework 
