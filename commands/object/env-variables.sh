# env 가 설정된 pod 생성
kubectl apply -f env-pod.yaml

# env 확인
kubectl exec nginx-env -it -- /bin/sh
env