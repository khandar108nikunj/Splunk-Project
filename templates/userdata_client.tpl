#!/bin/bash
sudo su
useradd -d /home/ansadm -m ansadm
echo "Crest$123" | passwd --stdin ansadm
passwd -x -1 ansadm
sudo chmod 700 /etc/sudoers
sudo echo "ansadm ALL=NOPASSWD: ALL" >> /etc/sudoers
su - ansadm <<'EOF'
sleep 2m
mkdir .ssh
chmod 700 .ssh/
chown ansadm:ansadm .ssh/
cd .ssh/
touch  authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmAwYHnXWoZ6BwwQAxSMxqxvhuWa6kyHtRsFklmURdlHbVZ+hz+PQa5lPNA1YdR7iK05mi1OmZXZvnF2EYqzFzpmsUK2I37xtKKDElC9VcMpjKbcqTUormTgO7uwIL6/tc2R6/WYNHPvwSB2cUWWP3rYzamMGGuCjFwqWHuFtN9aUDYlsZCJBCW7F5MCfUBA4A16HdyJtCnocobn4D8N1AdAYXke/eAYpwDUmNRAH1MNq324YFsU5b2Sln8sIk1uwAbs2Q+KaATm57Dyqzh5gm56TBieGvIS8bRGS2J/37NgPsFLgRj7nU04gnXR1ogGHuvzG8FOaqhhrvqbtm9CVX ansadm@ip-172-31-92-184.ec2.internal" >> authorized_keys
chown ansadm:ansadm authorized_keys
chmod 600 authorized_keys
EOF

