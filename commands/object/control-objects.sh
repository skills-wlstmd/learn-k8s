# Role & RoleBinding
# ServiceAccount 생성
kubectl create sa dev-sa

# role, rolebinding 생성
kubectl apply -f role.yaml
kubectl apply -f rolebinding.yaml

# 확인 및 테스트
kubectl get roles
kubectl get rolebindings
kubectl auth can-i create configmap --as system:serviceaccount:default:dev-sa
kubectl auth can-i create deployment --as system:serviceaccount:default:dev-sa
