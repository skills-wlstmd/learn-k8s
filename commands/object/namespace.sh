# namespace 생성 및 확인
kubectl create ns my-app
kubectl get ns --show-labels
kubectl delete ns my-app

# 특정 namespace에 있는 자원 확인
kubectl get pod -n kube-system
kubectl get all -n kube-system

# 모든 namespace에 있는 자원 확인
kubectl get all -A

# 네임스페이스가 있는 리소스 확인
kubectl api-resources --namespaced=true 

# 네임스페이스가 없는 리소스 확인
kubectl api-resources --namespaced=false