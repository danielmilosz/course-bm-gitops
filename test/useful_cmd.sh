kubectl create namespace preview-1
kustomize build --enable-alpha-plugins --enable-exec . | kubectl apply -f -

kubectl apply -f test-deployment.yaml

kubectl get pod -n preview-1
kubectl describe pod NAZWA_PODA -n preview-1