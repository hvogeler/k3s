# Kubernetes k3s installation
The main artifact is the `k3s.sh` script. The other files are created by this script.

Make sure to review the preparation requirements of this script

    - Have Proxmox installed
    - Have the 6 VMs created
    - Have copied the id_rsa and id_rsa.pub key files from the /root/.ssh directory of the Proxmox installation to each VM's home directory
    - Make sure each VM as 10GB disk space available

# Add single node
## Raspberry Pi

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

### If using a nvme ssd 
Change `/boot/firmware/cmdline.txt` on the boot partition of the nvme
Add the following to the top line:
```
cgroup_memory=1 cgroup_enable=memory
```
Add the following lines to the '/boot/firmware/config.txt' on the nvme boot partition!
```
dtparam=pciex1
dtparam=pciex1_gen=3
```

Test nvme speed
```
sync;dd if=/dev/zero of=tempfile bs=1M count=1024; sync
sudo /sbin/sysctl -w vm.drop_caches=3
dd if=tempfile of=/dev/null bs=1M count=1024
```
Disk speeds should be well over 800MB/s.
If not check the power supply. The pi5 pulls surprisingly much using the nvme sdd.
