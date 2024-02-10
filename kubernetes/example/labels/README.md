# Labels

## Create

Declarative
```sh
kubectl apply -f deployments.yml
```

Imperative
```sh
kubectl create deployment --namespace sandbox --image nginx web-nginx app=web-nginx tier=dev
```