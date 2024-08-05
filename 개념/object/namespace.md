# namespace

- 동일 물리 클러스터를 기반으로 하는 복수의 가상 클러스터를 지원하는 개념
- 클러스터를 논리적으로 나누고 액세스를 제한하여 리소스를 생성, 관리
- 논리적으로 구분이 되지만 격리가 되는 것은 아님. (격리를 위해서는 network policy와 같은 다른 오브젝트를 추가로 사용해야함)

`기본 namespace`

- default : pod, deployment가 생성될 때 기본적으로 생성되는 namespace
- kube-system : DNS, kube-proxy, k8s 대시보드 처럼 시스템 제어 리소스가 사용하는 namespace
- kube-public : 전체 클러스터 리소스에 대한 가시성을 제공 하는 경우 사용 (일반적으로 사용되지 않음)

`custom namespace`

- prometheus, argo, istio 등등의 시스템 관련 솔루션들은 독자 namespace를 할당
- microservice별로 namespace를 할당하여 논리적으로 분리
