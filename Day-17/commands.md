```
git clone https://github.com/iam-veeramalla/three-tier-architecture-demo.git
```

```
az aks get-credentials --resource-group <your-resource-group-name> --name <your-aks-name>
```

```
kubectl get pods
```
or
```
kubectl config current-context
```

```
cd AKS
```

```
cd helm
```

```
kubectl create ns robot-shop
```

```
helm install --generate-name --namespace robot-shop .
```

```
kubectl get storageclass
```

```
kubectl get pods -n robot-shops
```

```
kubectl describe pod redis-0 -n robot-shop
```

```
kubectl get pvc -n robot-shop
```

```
vim ingress.yaml
```

```
kubectl apply -f ingress.yaml -n robot-shop
```
 
```
kubectl get pods -A | grep ingress-appgateway
```

```
kubectl get pods -n kube-system
```

```
kubectl get ing -n robot-shop
```
