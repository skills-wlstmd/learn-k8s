# 노드 리스트 확인
kubectl get nodes

# 노드의 상세 정보 확인
kubectl get nodes -o wide 

# yaml 형식으로 출력
kubectl get nodes <node명>-o yaml 

# 노드의 상세 정보 확인
kubectl describe node <node명> 

# 노드를 스케줄링 금지
kubectl cordon <node명> 

# 노드 스케줄링 허용
kubectl uncordon <node명> 

# 노드의 파드를 다른 노드로 이동 후 노드를 비운다
kubectl drain <node명> 

# 노드를 다시 사용할 수 있게 한다
kubectl undrain <node명> 

# 데몬셋을 무시하고 노드를 비운다
kubectl drain <node명> --ignore-daemonsets --delete-local-data 