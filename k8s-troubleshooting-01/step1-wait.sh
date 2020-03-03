#!/bin/bash -e

until minikube status 2>&1 > /dev/null; do
  echo -n "."
  sleep 1
done
echo "Kubernetes is ready"