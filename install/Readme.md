# Kubernetes k3s installation
The main artifact is the `k3s.sh` script. The other files are created by this script.

Make sure to review the preparation requirements of this script

    - Have Proxmox installed
    - Have the 6 VMs created
    - Have copied the id_rsa and id_rsa.pub key files from the /root/.ssh directory of the Proxmox installation to each VM's home directory
    - Make sure each VM as 10GB disk space available

# Add single node
## Raspberry Pi
### Change `/boot/firmware/cmdline.txt`
Add the following to the top line:
```
cgroup_memory=1 cgroup_enable=memory
```
### Prepare user _ubuntu_
- create user ubuntu/0146
```
sudo useradd -s /bin/bash -g users -m ubuntu
sudo passwd ubuntu
```
- copy the public id_rsa_proxmox.pub key to the `/home/ubuntu/.ssh/authorized_keys` file
- configure sudo to not ask for a password. `sudo visudo` and  add this line:
```
ubuntu  ALL=(ALL:ALL) NOPASSWD: ALL
```

### Test user ubuntu
- `ssh -i ~/.ssh/id_rsa_proxmox ubuntu@<node_ip>`. Login must not ask for a password
- `sudo df` must not ask for a password
- 