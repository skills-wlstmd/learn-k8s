# kubeconfig 등록
aws --profile learn-eks eks --region ap-northeast-2 update-kubeconfig --name learn-eks-cluster --alias learn-eks-cluster

# 등록된 kubeconfig 확인
cat ~/.kube/config

# context 변경
kubectl config use-context learn-eks-cluster

# kubectl 명령어로 클러스터 정보 확인
kubectl cluster-info
