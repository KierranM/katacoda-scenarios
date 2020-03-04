**Scenario:** You have created a deployment for a website, but the
application appears to be unreachable. Your task is to figure out why and
fix the problem. You may need to make changes to the deployment, service,
or namespace to get the website working.

The deployment is called `my-website` in the `my-website` namespace.

Here are some Kubernetes reference docs you may find useful:

- [Kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
- [Concepts - Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod/)
- [Concepts - Depoyment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [Concepts - Namespaces](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)

The deployment manifest is located here:

```
cat ~/my-website.yaml
```{{ execute }}

If you want to be able to quickly run commands against the namespace you can
use this alias:
```
alias k="kubectl -n my-website"
```{{ execute }}

You can check the `My Website` tab, or browse to https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
to check the status of the website.

_**Note:** Until the service is working, navigating to this page will display the Katacoda error page_