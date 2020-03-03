Please wait for the environment to be ready.
```
until minikube status > /dev/null; do
  echo -n "."
  sleep 1
done
echo "Kubernetes is ready"
```{{ execute }}