# replicaset 생성
kubectl apply -f replicaset.yaml
kubectl get rs
kubectl get rs -o wide

# replicaset의 상세 정보 확인
kubectl describe rs myapp-replicaset

# type=front-end 레이블을 가진 pod 확인
kubectl get pod -l type=front-end --show-labels

# 자동 복구 확인
kubectl delete pod <pod명>
kubectl get pod

# 레플리카셋의 레플리카 개수를 6개로 조정
kubectl scale rs myapp-replicaset --replicas=6 