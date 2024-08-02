# kube-scheduler

- 클러스터 안에서 자원 할당이 가능한 노드중 알맞은 노드를 선택하는 역할
- Label / Selector / Affinity / Taint / Toleration 기능과 함께 동작
- 기본포트 : 10259

`pod 스케줄링의 필요성`

- 머신러닝 워크로드를 돌리는 특정 pod는 GPU가 탑재된 node에서만 돌아야 함
- consumer들은 네트워크 intensice하므로 전용 node group을 쓰고 싶음
- 팀별로 node를 나눠서 쓰고 싶음

`pod 스케줄링 분류`

- 사용자가 특정 노드에 pod를 배치하고 싶을때
  nodeSelector, Node Affinity, Node Anti-Affinity, Inter Pod Affinity, Inter Pod Anti-Affinity

- 관리자가 특정노드에 pod가 배치되는 것을 막고 싶을때
  Taints, Tolerations

`Taints & Tolerations`

- 어떤 pod가 어떤 node에 스케줄링 될 수 있는지를 제한
- ex) k8s가 control node에는 pod가 스케줄링 되지 않도록 taint가 되어 있음
- Taints : node가 가지게 되는 성격 (예. taint: blue)
- Toleration : pod가 가지게 되는 taint에 대한 toleration (예. toleration: blue)

`Label & Selector (Affinity)`

- NodeSelector

  - 노드에 라벨을 할당하고, 파드에는 nodeSelector 필드를 추가하여 특정 노드에만 구동되도록 함
    다만, NodeSelector는 여러 값을 할당하거나 not 예외처리를 하거나 하는 등을 하기는 어려움

- NodeAffinity
  - 여러 advanced 할당을 할 수 있는 만큼 문법이 다소 복잡
