# Service

- Pod 집합과 같은 어플리케이션에 접근 경로나 Service Discovery를 제공
- Pod를 외부 네트워크에 연결하고, pod으로의 연결을 로드밸런싱 하는 네트워크 오브젝트
- 하나의 Microservice 단위
- 서비스이름.네임스페이스.svc.cluster.local 이라는 FQDN 이 생성

## Service Type

<img width="397" alt="ClusterIP" src="https://github.com/user-attachments/assets/861220a6-7bfe-4620-8143-18671344c17a">

`Service : ClusterIP`

- kubernetes 클러스터 내부에서만 통신이 가능한 internal network 가상 IP가 할당
- service - pod 간 통신은 kube-proxy가 담당
- 서비스 디버깅이나 테스트시 보통 사용

<img width="439" alt="NodePort" src="https://github.com/user-attachments/assets/114829f3-0ed4-4343-99df-9a38289d1df7">

`Service : Nodeport`

- NAT를 이용해 클러스터 내 Node의 고정된 port를 갖는 IP로 service를 노출
- 외부 트래픽을 서비스에 전달하는 가장 기본적인 방법
- 클러스터 외부에서 접근은 : <NodeIP>:<NodePort>
- Port 사용 범위 : 30000-32767

<img width="390" alt="LoadBalancer" src="https://github.com/user-attachments/assets/eade269f-7d29-4b50-8b70-d65f6f200f2f">

`Service : LoadBalancer`

- 클라우드 공급자의 로드밸런서를 이용해 service를 외부로 노출
- 외부 로드밸런서를 사용하기 때문에 SPOF에 강함
- L4(TCP) or L7(HTTP) 레이어를 통해 service 노출
