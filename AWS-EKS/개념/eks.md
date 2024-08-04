# AWS EKS (Amazon Elastic Kubernetes Service)

Kubernetes 컨트롤 플레인을 구성하거나 유지할 필요 없이 AWS에서 Kubernetes를 쉽게 실행할 수 있는 관리형 서비스

# AWS EKS Architecture

![AWS-EKS-1](https://github.com/user-attachments/assets/544a74f0-2af4-46c0-8d57-ea47ec17d48f)
![AWS-EKS-2](https://github.com/user-attachments/assets/6dd9aa60-0730-49fe-92e2-665af0828835)

# AWS EKS Control Plane

![AWS-EKS-3](https://github.com/user-attachments/assets/96a08528-4e06-45af-827d-94696ee698d5)

`클러스터 인증 관리`

- 인증 : EKS는 IAM을 사용하여 Kubernetes 클러스터에 인증을 제공 (aws-iam-authenticator의 aws eks get-token 명령), 유효한 IAM 엔티티 (IAM user/role)의 인증에만 사용

- 인가 : EKS 클러스터의 Kubernetes API와의 상호작용에 대한 모든 권한은 기본 Kubernetes RBAC 시스템을 통해 관리
  - kubernetes 리소스에 대한 사용 권한의 집합인 Role에 대한 특정 IAM사용자나 역할을 매핑
