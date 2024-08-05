# ServiceAccount

- 사람이 아닌, machine이 사용하는 account (예. 프로메테우스, 젠킨스)
- (사용자 어카운트는 k8s 관리 대상이 아님)
- Pod 내 프로세스에 Identity를 제공
- 모든 네임스페이스는 default service account가 있으며, 기본 k8s api를 사용할 수 있는 제한된 권한을 제공

# Network Policy

- Pod 내부로 들어오거나 외부로 나가는 트래픽을 허용하고 거부하는 정책을 설정할 수 있는 오브젝트
- 기본적으로 Whitelist형식
- CNI를 사용하는것이 전제
