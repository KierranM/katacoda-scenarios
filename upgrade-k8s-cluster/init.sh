#!/bin/bash -e

if [ "$(hostname)" == "master" ]; then 
  kubectl create deployment http --image=katacoda/docker-http-server:latest
fi

apt-mark hold kubeadm kubectl kubelet