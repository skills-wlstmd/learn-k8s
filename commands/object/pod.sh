# 명령형 방식으로 pod 생성
# nginx 이미지로 pod 생성
kubectl run nginx --image=nginx 
kubectl run nginx2 --image=nginx --dry-run=client -o yaml > pod.yaml # dry-run 옵션이란 실제로 실행하지 않고 실행할 명령어를 출력하는 옵션
kubectl get pod
kubectl describe pod nginx

# 선언형 방식으로 pod 생성
kubectl apply -f pod.yaml
kubectl get pod
kubectl get pod -o wide

# pod의 로그 확인
kubectl logs nginx

kubectl label pod nginx app=front-end