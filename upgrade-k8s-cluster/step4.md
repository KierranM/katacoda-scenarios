Prepare the worker node for the upgrade by draining it.

```
kubectl drain node01 --ignore-daemonsets
```{{ execute HOST1 }}

Perform the upgrade with kubeadm

```
kubeadm upgrade node
```{{ execute HOST2 }}

You can now update the kubelet and kubectl versions on the node. These should
be updated to the same version used to install kubeadm.

```
apt-get install -y --allow-change-held-packages kubelet=<version> kubectl=<version>
```

Check that the node has updated (this may take a minute or so to update):

```
kubectl get nodes
```{{ execute HOST1 }}

Finally, uncordon the worker node so that scheduling is re-enabled before
moving on to updating the node. If you were performing this in a cluster with
multiple nodes, you would then continue updating each node.

```
kubectl uncordon node01
```{{ execute HOST1 }}