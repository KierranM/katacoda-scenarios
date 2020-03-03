Here are some Kubernetes reference docs you may find useful:

- [Kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
- [Concepts - Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod/)
- [Concepts - Depoyment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [Concepts - Namespaces](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)

The deployment manifest is located here:

```
cat ~/my-website.yaml
```{{ execute }}

The deployment has been deployed to the `my-website` namespace

```
kubectl -n my-website
```{{ copy }}

You can check the `My Website` tab, or browse to https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
to check the status of the website