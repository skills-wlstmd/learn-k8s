# Deployment

- 복제된 (replicated) 애플리케이션(Pod)를 관리하는 오브젝트
- 롤링 업데이트나 롤백 등을 구현하는 리소스

`Deployment 배포 전략`

- recreate : 모든 파드 삭제 후 다시 파드 생성 (다운 타임 발생)
- rollingupdate : 하나씩 업데이트
  - maxUnavailable : 업데이트 진행 중 사용 불가능한 최대 Pod 수
  - maxSurge : 업데이트 진행 중 원래 replicas 수를 초과할 수 있는 최대 Pod 수
