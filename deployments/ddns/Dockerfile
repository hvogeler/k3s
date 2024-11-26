FROM alpine:latest
RUN apk add --no-cache bash bind-tools curl
COPY cloudflare-ddns.sh /
RUN chmod +x /cloudflare-ddns.sh
CMD ["/bin/bash", "/cloudflare-ddns.sh"]

# docker run --rm \
# -e ZONE_ID="d384373cd94754b3b3bddfd172d7aa56" \
# -e RECORD_NAME="homelab.vogeler.cc" \
# -e AUTH_EMAIL="heiko.vogeler@hvo.de" \
# -e API_TOKEN="H44Y6lECORFVJQK7oOc6jPGEG6V3SVKyYK4vWs4w" \
# hvogeler/cloudflare-ddns:1.0