Please wait for the environment to be ready.
```
until minikube status > /dev/null; do
  echo "."
  sleep 1
done
echo "Kubernetes is ready"
```

The deployment manifest is located here:

```
cat ~/my-website.yaml
```{{execute}}