#!/bin/bash -e

HOST_IP="$(ip -4 addr show ens3 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')"

curl --fail $HOST_IP:8080