#!/bin/bash
cat > /etc/ansible/hosts <<EOF
[CM]
$(aws ec2 describe-instances --filters "Name=tag-value,Values=C0m1" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text)
[ID]
$(aws ec2 describe-instances --filters "Name=tag-value,Values=Idx-1" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text)
[SH]
$(aws ec2 describe-instances --filters "Name=tag-value,Values=SH" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text)
[UF]
$(aws ec2 describe-instances --filters "Name=tag-value,Values=UF" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text)
EOF

temp=`aws ec2 describe-instances --filters "Name=tag-value,Values=C0m1" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text`
ssh-keyscan -H $temp  >> ~/.ssh/known_hosts

temp=`aws ec2 describe-instances --filters "Name=tag-value,Values=Idx-1" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text`
ssh-keyscan -H $temp  >> ~/.ssh/known_hosts

temp=`aws ec2 describe-instances --filters "Name=tag-value,Values=Idx-2" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text`
ssh-keyscan -H $temp  >> ~/.ssh/known_hosts


temp=`aws ec2 describe-instances --filters "Name=tag-value,Values=SH" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text`
ssh-keyscan -H $temp  >> ~/.ssh/known_hosts


temp=`aws ec2 describe-instances --filters "Name=tag-value,Values=UF" --query "Reservations[*].Instances[*].{Instance:PublicDnsName}" --output text`
ssh-keyscan -H $temp  >> ~/.ssh/known_hosts
