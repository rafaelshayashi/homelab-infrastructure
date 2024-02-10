# Example nginx with a namespace

## Create

Declarative

```sh
kubectl apply -f deployment.yml
```

Imperative

```sh
kubectl create namespace webservices
kubectl create run nginx --image=nginx --namespace=webservices
```

## Delete

```sh
kubectl delete namespaces webservices
``` 