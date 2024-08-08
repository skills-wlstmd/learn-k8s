# Ingress Controller

- k8s나 다른 컨테이너 환경에서 reverse proxy혹은 loadbalancer역할을 하는 리소스
- Service인그레스 리소스가 동작하려면 클러스터에 인그레스 컨트롤러가 있어야함
- kube-controller-manager 바이너리의 일부로 실행되는 다른 유형의 컨트롤러와 달리 Ingress Controller 는 클러스터와 함께 자동으로 시작되지 않음
- Nginx Ingress Controller, Istio Ingress, Ambassador, Counter...
