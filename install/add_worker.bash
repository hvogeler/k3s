#!/bin/bash

if [[ $# < 1 ]]
then
  echo "usage: $0 <node-ip-address>"
  exit 1
fi

k3sVersion="v1.31.2+k3s1"
ip=$1
user=ubuntu
certName=id_rsa_proxmox
interface=eth0
master1=192.168.178.45

k3sup join \
  --ip $ip \
  --user $user \
  --sudo \
  --k3s-version $k3sVersion \
  --server-ip $master1 \
  --ssh-key $HOME/.ssh/$certName \
  --k3s-extra-args "--node-label \"longhorn=true\" --node-label \"worker=true\""
