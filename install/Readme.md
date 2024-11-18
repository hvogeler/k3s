# Kubernetes k3s installation
The main artifact is the `k3s.sh` script. The other files are created by this script.

Make sure to review the preparation requirements of this script

    - Have Proxmox installed
    - Have the 6 VMs created
    - Have copied the id_rsa and id_rsa.pub key files from the /root/.ssh directory of the Proxmox installation to each VM's home directory
    - Make sure each VM as 10GB disk space available
