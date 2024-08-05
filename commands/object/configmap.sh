# 직접 값을 전달하여 생성
kubectl create configmap --save-config test-config --from-literal=app=pink --from-literal=connection.max=100
kubectl get cm test-config -o yaml | yq .data


# 파일에서 값을 참조하여 생성
kubectl create configmap --save-config test2-config --from-file=nginx.conf
kubectl get cm test2-config -o yaml | yq .data