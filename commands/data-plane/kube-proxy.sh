# kube proxy 구성 확인

# kube-proxy configmap 확인
kubectl describe configmap kube-proxy -n kube-system

# minikube VM 로그인
minikube ssh

# 네트워크 모드 확인
curl localhost:10249/proxyMode

# iptables 확인
sudo iptables -L 