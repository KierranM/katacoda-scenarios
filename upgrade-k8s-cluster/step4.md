Prepare the worker node for the upgrade by draining it from the master

```
kubectl drain node01 --ignore-daemonsets --delete-local-data
```{{ execute HOST1 }}

_*Note:* The `--delete-local-data` flag is used to clear out the
coreDNS pods in this case. In the real world you'd want to make sure
that the pods with local storage aren't going to cause significant
problems before running it._

On the worker node, perform the upgrade with kubeadm

```
kubeadm upgrade node
```{{ execute HOST2 }}

You can now update the kubelet and kubectl versions on the node. These should
be updated to the same version used to install kubeadm (i.e `1.15.10-00`).

```
apt-get install -y --allow-change-held-packages kubelet=<version> kubectl=<version>
```{{ copy }}

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

Check the status of the pods that are running

```
kubectl get pods --all-namespaces
```{{ execute HOST1 }}