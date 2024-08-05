# metric server

- k8s 클러스터 리소스 사용량 데이터를 집계하는 역할
- kubelet에서 리소스 메트릭 (예. 컨테이너의 CPU 및 메모리 메트릭)을 수집하고
  이를 Metrics API를 통해 apiserver에 노출하여 Horizontal Pod Autoscaler 및 Vertical Pod Autoscaler에서 활용
- 클러스터 내에 Deployment 형태로 설치

# Horizontal Pod Autoscaler (HPA)

- Deployment / Replicaset의 레플리카 수를 CPU / 메모리 부하 등에 따라 자동으로 스케일 해주는 오브젝트
- Pod의 Resource Requests를 기준으로 동작
- metric server에서 가져온 각 파드의 1분 평균 값

`Horizontal Pod Autoscaler의 기준`

- cpu (resource)
- memory (resource)
- packets-per-second (pod)
- request-per-second (ingress)

`Horizontal Pod Autoscaler와 Cluster Autoscaler의 상호작용`

- 컨테이너(Pod)의 로드가 증가하면 HPA는 우선 클러스터에 충분한 공간이 있든 없든 새 replica를 생성
- 리소스가 충분하지 않은 경우 CA는 HPA에서 생성한 Pod가 실행될 노드를 새로 기동
- 반대로 로드가 감소되면 HPA는 일부 replica를 삭제하고, 결과적으로 활용되지 않는 노드가 생기면 CA가 이러한 노드를 종료

# Vertical Pod Autoscaler (VPA)

- 컨테이너에 할당되는 CPU / 메모리 리소스의 할당을 자동으로 스케일링 해주는 오브젝트 (= scale up)
- 서비스 적용 전 Pod resource request에 어떤 값이 적정한지 명확하지 않을때 유용
- VPA > HPA > CA 순으로 스케일링 동작
