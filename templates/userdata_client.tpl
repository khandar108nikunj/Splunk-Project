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
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4XQT/JiG9KPIzG4iedW/CVmOplSz7JmyFqnNQ01USge0nBbT9T4I3JgYOy0PTrKqkbIXOGg84zjL/3MrZT09q9RYR7rvXRHgKQV3yTn5zbC9R9XJ1CgMZi3Dp6jg5+80CMNAtJu55oKLDrJ0dSj329u8rH4i8rXLaUqtaboLa1ZAtJb4l//5d4FOVD6avs6n65EAyl6fz5y1O26drY4cpuLaEykqHt4zvcPjjDWCYeq2YEEOAeiEXeCcRtRDSdI5hitJDqHuDIOAmIs9KijCKSvMgxeXDkiSSRggxrXyaZY0IJNcTcwlBGiJnI5PiPGRFHWZUAz+tAemtygaXnIOT ansadm@ip-172-31-41-129.ec2.internal" >> authorized_keys
chown ansadm:ansadm authorized_keys
chmod 600 authorized_keys
EOF

