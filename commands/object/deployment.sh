# deployment 생성
kubectl apply -f deployment.yaml --record # --record: revision history에 기록
kubectl get deployments
kubectl describe deployment myapp-deployment
kubectl get rs
kubectl get pods

# deployment의 이미지 변경
kubectl set image deployment myapp-deployment nginx-container=nginx:1.23 --record 

# revision history 확인
kubectl rollout history deployment myapp-deployment 

# revision history로 이전 버전으로 rollback
kubectl rollout undo deployment myapp-deployment --to-revision=1

# rollout status 확인
kubectl rollout status deployment myapp-deployment

# rollout pause
kubectl rollout pause deployment myapp-deployment # pause는 현재 진행중인 rollout을 멈춤
