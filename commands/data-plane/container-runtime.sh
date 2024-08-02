# container-runtime 구성 확인
kubectl describe node minikube | grep -i container # grep은 파일 내에서 특정 문자열을 찾아주는 명령어

# containerd 로그 확인
sudo journalctl -u containerd

# containerd 상태 확인
sudo systemctl status containerd

# containerd 버전 확인
containerd --version

# containerd 구성 파일 확인
cat /etc/containerd/config.toml

