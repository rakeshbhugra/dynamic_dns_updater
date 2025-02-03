#!/bin/bash

# Fetch current public IP
CURRENT_IP=$(curl -s https://ipinfo.io/ip)
SUBDOMAIN="openwebui"
YOUR_DOMAIN="aetheriaops.com"
API_KEY=$(cat namecheap/.api_key | tr -d '[:space:]')  # Remove any newlines/spaces

# Debugging
# echo "Using API_KEY: '$API_KEY'"

# Update DNS
curl "https://dynamicdns.park-your-domain.com/update?host=$SUBDOMAIN&domain=$YOUR_DOMAIN&password=$API_KEY&ip=$CURRENT_IP"
