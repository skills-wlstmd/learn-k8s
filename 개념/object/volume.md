# Volume

- 스토리지 볼륨을 추상화 하여 pod와 느슨하게 결합시킨 리소스
- 오브젝트의 형태가 아닌 pod 내에서 정의
- 볼륨 플러그인
  - hostPath
  - nfs
  - iscsi
  - cephfs
  - emptyDir

`Volume의 한계`

- 컨테이너 자신만 접근 가능한 비영구적 볼륨이기 때문에 컨테이너가 재시작할때 유지 할 수 없음
- k8s 클러스터 레벨에서 볼륨을 관리하기 어려움
- volume이 변경될때마다 해당 volume을 사용하는 모든 pod의 설정 변경 필요

`Persistent Volume (PV)`

- 추상화된 가상의 volume 오브젝트로, 별도로 정의 및 생성하여 pod와 연결

`Persistent Volume Claim (PVC)`

- PV를 요청하는 오브젝트
- 용량, label 등을 기반으로 PV에 대한 요청이 들어오면 스케줄러가 현재 가지고 있는 PV에서 적당한 볼륨을 할당

`Storage Class`

- 사용할 스토리지의 "클래스"를 정의
- 각 프로바이더 (ex. AWS, GCP, Azure 등) 가 제공하는 볼륨의 종류에 따라 고유한 파라미터를 가짐
