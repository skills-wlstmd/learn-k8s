# Ingress

<img width="776" alt="Ingress" src="https://github.com/user-attachments/assets/09a59a93-8444-4685-972e-8e96e514682f">

- Service type은 아니지만 Service 앞에서 Smart router 및 entry point역할을 하는 오브젝트
- 외부에서 접근 가능한 URL, Load Balancing, SSL Termination 등을 통해 Service에 대한 HTTP기반 접근을 제공
- 클러스터에 하나 이상의 실행중인 Ingress Controller가 필요 (e.g. aws-lb-controller, nginx ingress)
