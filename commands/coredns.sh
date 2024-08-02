# coredns 구성확인
kubectl describe configmap coredns -n kube-system

# 도메인 호출 테스트
kubectl create ns app

# 테스트 pod (nginx) 생성
kubectl run nginx --image=nginx -n app
kubectl get pod -n app
kubectl get pod -n app -o wide

# curl pod 생성
kubectl run curl -it --rm --image curlimages/curl -- sh 

# dns 호출
curl 10-244-0-6.app.pod.cluster.local 

# 도메인 호출 테스트
# resolv.conf 확인 (curl pod 안에서)
cat /etc/resolv.conf