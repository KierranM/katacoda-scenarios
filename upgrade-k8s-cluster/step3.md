Prepare the master for the upgrade by draining it.

```
kubectl drain master --ignore-daemonsets
```{{ execute HOST1 }}

Use kubeadm to plan the upgrade on the master, this command will output
the currently running versions and the versions it is can update to.

```
kubeadm upgrade plan
```{{ execute HOST1 }}

You can then run the command output by the plan to perform your upgrade. I.e:

```
kubeadm upgrade apply <version>
```

Kubeadm will perform a backup of etcd automatically before updating the
components that are deployed as static pods.

Now that the components have been updated, you can update the kubelet
and kubectl versions on the master. These should be updated to the same
version used to install kubeadm (i.e `1.15.10-00`).

```
apt-get install -y --allow-change-held-packages kubelet=<version> kubectl=<version>
```

Check that the master node has updated (this may take a minute or so to update):

```
kubectl get nodes
```{{ execute HOST1 }}

Finally, uncordon the master so that scheduling is re-enabled before
moving on to updating the node. If you were performing this in a cluster with
multiple masters, you would update those before updating the nodes.

```
kubectl uncordon master
```{{ execute HOST1 }}