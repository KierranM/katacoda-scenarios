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
kubectl apply ~/my-website.yaml -n my-website