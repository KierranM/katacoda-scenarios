Before we start our upgrade, we need to check the current versions we are running.

Check the current version of `kubeadm` on the master:
```
kubeadm version
```{{ execute HOST1 }}

Check the current version of `kubeadm` on the node:
```
kubeadm version
```{{ execute HOST2 }}

Check which versions of kubelet are running:
```
kubectl get nodes
```{{ execute HOST1 }}

There should be an http server running in the default namespace, check it's
health:

```
kubectl get pods
```{{ execute HOST1 }}

With the current state of the cluster assessed, we can move on to updating the
master.