#!/bin/bash -e

echo "Starting Kubernetes..."
until minikube status
do
  sleep 1
done

echo "Kubernetes Started"

HOST_IP="$(ip -4 addr show ens3 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')"

sed -i "s/HOSTIP/${HOST_IP}/g" ~/my-website.yaml

kubectl apply -f /opt/namespace.yaml
# Sleep to give the quote enough time to load
sleep 10

kubectl apply -f ~/my-website.yaml -n my-website