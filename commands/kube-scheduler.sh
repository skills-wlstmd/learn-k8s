# Taints & Tolerations
## PreferNoSchedule : toleration이 없으면 pod 스케줄링 X / NoExcute : toleration이 없으면 pod 스케줄링 X & 기존 실행 pod 종료
kubectl taint nodes node1 app=blue:NoSchedule(|PreferNoSchedule|NoExcute)

# Label & Selector (Affinity)
## 기준 : 라벨링 후 pod에서 nodeSelector로 해당 노드에 pod 스케줄링
# Node
kubectl label nodes node01 size=Large 

## Labels and Selector
# Pod
apiVersion: v1
kind: Pod
metadata:
  name: myapp-pod
spec:
  containers:
  - name: nginx
    image: nginx
  nodeSelector:
    size: Large


## Label and NodeAffinity
# Pod
apiVersion: v1
kind: Pod
metadata:
  name: myapp-pod
spec:
  containers:
  - name: nginx
    image: nginx
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution: # 해당 노드에 pod 스케줄링 시 필수적으로 필요한 조건을 의미 / preferredDuringSchedulingIgnoredDuringExecution :해당 노드에 pod 스케줄링 시 우선적으로 필요한 조건을 의미
        nodeSelectorTerms:
        - matchExpressions:
          - key: size
            operator: In(|NotIn|Exists) # In : 해당 노드에 key가 존재하는 경우 / NotIn : 해당 노드에 key가 존재하지 않는 경우 / Exists : 해당 노드에 key가 존재하는 경우 
            values:
            - Large
            - Medium