#!/bin/bash -e

HOST_IP="$(ip -4 addr show ens3 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')"

sed -i "s/HOSTIP/${HOST_IP}/g" ~/deployment.yaml

kubectl apply -f /opt/namespace.yaml
kubectl apply ~/my-website.yaml -n my-website