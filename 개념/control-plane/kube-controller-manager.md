# kube-controller-manager

- 다양한 컨트롤러를 실행하는 구성요소
- 노드 컨트롤러 / 잡 컨트롤러 / 엔드포인트 컨트롤러 / 레플리케이션 컨트롤러 등 각 오브젝트를 관할
- 기본포트 : 10257

`컨트롤러 동작 예시`

- 노드에 문제가 생겼을때의 노드컨트롤러 동작
  - 5s마다 status check를 하다가 (node monitor period)
  - heartbeat가 도착하지 않으면 40s를 대기하고 unreachable로 마킹하고 (node monitor grace period)
  - 추가로 5m을 더 대기 (pod eviction timeout)
  - 복구되지 않으면 해당 node의 pod들을 정상 node로 재배포(pod가 replicaset에 해당하는 경우)

# cloud-controller-manager

- 쿠버네티스의 컨트롤러들을 클라우드 서비스 API와 연결해서 관리하는 컴포넌트
- CSP에 특화된 컨트롤러만을 관리
- 따라서 op prem환경인 경우 이 컴포넌트는 없음
