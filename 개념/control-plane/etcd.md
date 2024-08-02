# etcd

- 쿠버네티스에서 필요한 모든 데이터를 키-값 형태로 저장하는 데이터베이스
- etcd가 다운되면 모든 컴포넌트가 미아가 되기 때문에 가용성이 매우 중요
- 클러스터링하여 분산 실행하는 RSM (Replicated State Machine) 구조
- 기본포트 : 2379
- kube-apiserver만 유일하게 etcd에게 요청이 가능함

# ETCDctl

- etcd를 다루기 위한 유틸리티
- api version2와 3이 있음 (설정이 없으면 기본적으로 v2를 사용)
- ETCDCTL이 ETCD API Server에 인증할 수 있도록 인증서 파일 경로 지정 필요
