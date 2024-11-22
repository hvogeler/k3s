helm install traefik traefik/traefik --namespace traefik --create-namespace --values values.yaml

# Helpful commands
# kbc get svc -n traefik
# kbc apply -f ingress-route.yaml # - to traefik dashboard
# kbc describe crd ingressroutes.traefik.io > xx.txt
# kbc describe crd ingressroutes.traefik.io
# kbc get crds | grep traefik