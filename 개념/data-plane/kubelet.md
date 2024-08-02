# kubelet

- 각 kubernetes 노드에서 동작하는 node agent
- 컨테이너 런타임과 연계하여 컨테이너의 기동 및 정지 등을 관리
- 파드 스펙 설정을 kube-apiserver로부터 전달 받아 파드 컨테이너의 실행을 직접적으로 관리
- pod가 아닌 프로세스의 형태로 뜸
- 기본포트 : 10250
