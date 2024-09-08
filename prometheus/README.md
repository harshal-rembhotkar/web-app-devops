1. Setting up prometheus on k8s:

```
kubectl create namespace prometheus-monitor
```

2. Add prometheus repo to helm:

```
 helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

3. Update Helm repo list:
```
 helm update repo
```

4. Install prometheus operator on cluster using helm:
```
 helm install prometheus prometheus-community/kube-prometheus-stack -n monitoring
```
5. Port forward Grafana Dashboard SVC to access the prometheus metrics:
 ```
    kubectl port-forward svc/prometheus-grafana 3000:80 -n prometheus-monitor
```
