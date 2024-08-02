# kube-proxy

- 클러스터 내 각 노드에서 실행되는 네트워크 프록시
- 가상 네트워크의 동작을 관리
- IP translation과 라우팅
- 기본 포트 : 10249

`kube proxy가 네트워크를 관리할때 쓰는 방법`

- userspace > iptables > ipvs로 진화
- ipvs가 더 다양한 로드밸런싱 알고리즘을 갖고 있고 더 높은 성능을 냄
