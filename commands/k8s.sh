# minikube 실행
minikube start

# minikube 상태 확인
minikube status

# minikube 정지
minikube stop

# minikube 삭제
minikube delete

# 웹 대시보드 열기
minikube dashboard 

# 현재 컨텍스트 확인
kubectl config current-context

# 컨텍스트 목록 확인
kubectl config get-contexts

# 컨텍스트 전환
kubectl config use-context minikube

# 노드 확인
kubectl get nodes

# 네임스페이스 확인
kubectl get namespace

# pod 확인
kubectl get pod

# 모든 네임스페이스의 pod 확인
kubectl get pod -A 

# pod 상세 확인
kubectl describe pod <pod-name>

# pod 로그 확인
kubectl logs <pod-name>

# pod 생성
kubectl apply -f <pod-yaml>

# pod 삭제
kubectl delete pod <pod-name>

# 모든 리소스 확인
kubectl get all 

# 모든 네임스페이스의 리소스 확인
kubectl get all -A 

# 네임스페이스, IP, 노드 확인
kubectl get pods -o wide 