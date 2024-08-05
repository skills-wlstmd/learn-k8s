# kubernetes 오브젝트

- kubernetes 시스템 내에서 영속성을 가지는 오브젝트
- 클러스터의 의도한 상태를 나타내기위해 오브젝트를 이용
- status필드는 k8s의 시스템과 컴포넌트에 의한 오브젝트의 현재 상태를 나타내며, kubernetes control plane은 이 status를 사용자가 의도한 상태와 일치 시키기 위해 끊임 없이 / 능동적으로 관리

`의도한 상태`

- 오브젝트에 대한 기본적인 정보와 의도한 상태를 기술한 오브젝트 spec을 제시
- 오브젝트 생성을 위한 k8s API요청은 JSON 형식 정보를 포함
- 대부분의 경우 정보를 .yaml 파일로 kubectl에 제공
- kubectl은 API요청이 이루어질 때, JSON형식으로 정보를 변환
  - ex) kubectl apply -f deployment.yaml

`선언적 형태 : kubectl apply`

- kubectl apply -f file.yaml

`명령적 형태 : kubectl create, replace..`

- kubectl run --image=nginx nginx
- kubectl scale deployment nginx --replicas=3

`YAML의 기본구조`

- apiVersion (string)
- kind (string)
- metadata (dictionary)
- spec (dictionary)
- status (dictionary)
  - 오브젝트의 실제 상태를 기술
  - k8s control plane은 오브젝트의 실제상태를 의도한 상태에 일치시키기 위해 동작
