Add the kubeadm apt repository to the apt sources on the master and node
```
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
``` {{ execute HOST1 }}

```
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
``` {{ execute HOST2 }}

Find the version of kubeadm that you wish to install, this should line
up with the version of the kubernetes you wish to upgrade to. For example
to list all 1.15 versions:

```
apt-cache madison kubeadm | grep 1.15
```{{ execute HOST1 }}

You can then install that specific version on both master and node (i.e `1.15.10-00`)

```
apt-get install -y --allow-change-held-packages kubeadm=<version>
```

Now we can begin updating the master.