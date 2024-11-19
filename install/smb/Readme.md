# SMB on k3s
## Install CSI Driver
`curl -skSL https://raw.githubusercontent.com/kubernetes-csi/csi-driver-smb/v1.16.0/deploy/install-driver.sh | bash -s v1.16.0 --`

## Install secret
kubectl create secret generic smbcreds --from-literal username=hvo --from-literal password=opus31nr2

## Use in deployment
see rust/rustdev.yaml

For developing in Rust the smb mount was too slow.
