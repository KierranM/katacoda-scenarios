#!/bin/bash -e

until minikube status > /dev/null; do
  echo -n "."
  sleep 1
done
echo "Kubernetes is ready"