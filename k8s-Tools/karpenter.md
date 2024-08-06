# Karpenter

- AWS가 개발한 오픈소스 k8s의 워커노드 오토스케일러
- Cluster Autoscaler (CA)와 비슷한 역할을 수행하지만, AWS 리소스에 의존성이 없어 JIT(Just In Time)배포가 가능
- 오픈소스이기 때문에 주요 클라우드 공급업체 및 온프레미스 환경을 포함

# Karpenter 작동방식

![karpenter](https://github.com/user-attachments/assets/1f0b96d2-7ffd-4efa-b353-55e8e3cd5a25)

- 운영 부담 절감
- 신속한 노드 추가와 제거
- 자동 노드 롤링
- 다양한 인스턴스 타입을 쉽게 적용
- 빠른 버전 업그레이드

`Karpenter 컴포넌트`

- Karpenter Pod
  - Controller : pod 상태를 감시하고 Node를 확장 및 축소하는 주요 역할
  - Webhook : Provisioner CRD에 대한 유효성 검사 및 기본값을 지정
- Provisioner CRD
  - Karpenter에 의해 생성되는 Node와 Pod에 대한 제약조건을 지정하는 template
