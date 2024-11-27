helm install rancher rancher-latest/rancher \
  --namespace cattle-system \
  --set hostname=rancher.vogeler.cc \
  --set bootstrapPassword=admin \
  --set ingress.tls.source=letsEncrypt \
  --set letsEncrypt.email=heiko.vogeler@hvo.de \
  --set letsEncrypt.ingress.class=letsEncrypt \
  --set replicas=1

# helm uninstall rancher -n rancher-latest