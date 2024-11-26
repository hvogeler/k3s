# helm repo add jetstack https://charts.jetstack.io --force-update
helm install cert-manager --namespace cert-manager --create-namespace --values values.yaml jetstack/cert-manager

# kbc delete -f pgadmin-certificate.yaml
# kbc delete -f cm-cluster-issuer.yaml
# kbc delete -f cm-issuer-secret.yaml

# kbc apply -f cm-issuer-secret.yaml
# kbc apply -f cm-cluster-issuer.yaml
# kbc apply -f pgadmin-certificate.yaml
