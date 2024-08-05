# service 생성
# deployment 생성
kubectl create deployment nginx-svc --image=nginx:latest
kubectl get deployments

# Node Port 서비스로 노출
kubectl expose deployment nginx-svc --port=80 --type=NodePort

# 서비스 확인
kubectl get svc -o wide
kubectl get pod --show-labels

# curl 컨테이너 생성 및 curl 테스트
kubectl run curl -it --rm --image curlimages/curl -- sh 
curl nginx-svc.default.svc.cluster.local
curl ip-10-0-1-100.ap-northeast-2.compute.internal:30440