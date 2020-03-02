Add the kubeadm apt repository to the apt sources on the master
```
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
``` {{ execute HOST1 }}

Find the version of kubeadm that you wish to install, this should line
up with the version of the kubernetes you wish to upgrade to. For example
to list all 1.15 versions:

```
apt-cache kubeadm | grep 1.15
```{{ execute HOST1 }}

With your chosen version you can then install that specific version

```
apt-get install -y --allow-change-held-packages kubeadm=<version>
```