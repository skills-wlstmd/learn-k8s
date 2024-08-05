# kubernetes (k8s)

`쿠버네티스`란 컨테이너화된 워크로드와 서비스를 관리하기 위한 오픈소스 컨테이너 오케스트레이션 플랫폼 (orchestration 은 여러 대의 컴퓨터를 조합하여 하나의 컴퓨터처럼 사용하는 기술)
`orchestration이 필요한 이유`

- 자동화된 스케일링
- 자동화된 롤아웃과 롤백
- 자동화된 복구
- 자동화된 패킹
- 시크릿과 구성 관리
- 서비스 디스커버리와 로드 밸런싱
- 스토리지 오케스트레이션
- 선언적 코드를 사용한 운영 (IaC)

`kubectl : k8s 클러스터와 통신하기 위한 CLI도구`

# kubernetes 아키텍처

![아키텍처](https://github.com/user-attachments/assets/7e29b990-c3af-4582-b94e-1dfd7afcbc33)

`Control plane (Master Node) : k8s 전체를 통제/관리`

- kube-apiserver : 쿠버네티스 API를 노출하는 중앙 컨트롤 플레인 컴포넌트
- etcd : 모든 클러스터 데이터를 저장하는 일관성 있고 고가용성의 키-값 저장소
- kube-scheduler : 새로 생성된 파드를 노드에 할당하는 컨트롤 플레인 컴포넌트
- kube-controller-manager (cloud-controller-manager) : 다양한 컨트롤러를 실행하여 클러스터의 상태를 관리하는 컴포넌트

`Data plane (Worker Node) : 실제 사용자의 애플리케이션 배포`

- kubelet : k8s의 노드에 설치되어 컨테이너를 실행하고 관리하는 컴포넌트
- kube-proxy : k8s의 서비스 디스커버리와 로드밸런싱을 담당하는 컴포넌트
- container runtime : 컨테이너를 실행하는 소프트웨어 (예: Docker, containerd, CRI-O)

`구조`
![structure](https://github.com/user-attachments/assets/872ab42f-61e5-4cb4-ac33-36f31a74e529)

`k8s RBAC`
![k8s-RBAC](https://github.com/user-attachments/assets/b7c27b30-014f-4678-9909-1fdaf4209b6d)
