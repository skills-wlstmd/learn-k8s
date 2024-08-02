# kubelet 구성 확인

# kubelet 확인
minikube status

# kube-system namespace의 configmap 확인
kubectl get configmap -n kube-system

# kubelet의 configmap 확인
kubectl describe configmap kubelet-config -n kube-system

# minikube의 VM으로 로그인
minikube ssh

# kubelet 확인
ps -ef | grep kubelet
systemctl status kubelet

# kubelet 로그 확인
journalctl -u kubelet
