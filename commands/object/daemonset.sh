# daemonset 생성
kubectl apply -f daemonset.yaml
kubectl get ds
kubectl get pod -A -l app=monitoring-agent -o wide

# daemonset 재시작
kubectl rollout restart daemonset monitoring-daemon