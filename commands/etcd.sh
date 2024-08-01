# etcd pod 상세 확인
kubectl describe pod etcd-minikube -n kube-system

# ETCDctl로 클러스터 정보 조회

# etcd pod로 shell 실행
kubectl exec -it \
  -n kube-system etcd-minikube \
  -- sh -c 'ETCDCTL_CACERT=/var/lib/minikube/certs/etcd/ca.crt \
  ETCDCTL_CERT=/var/lib/minikube/certs/etcd/peer.crt \
  ETCDCTL_KEY=/var/lib/minikube/certs/etcd/peer.key \
  ETCDCTL_API=3 \
  etcdctl \
    get \
    --keys-only \
    --prefix=true \
    "/registry/pods/"'

kubectl -n kube-system exec -it etcd-minikube -- /bin/sh 

# member 조회
ETCDCTL_API=3 etcdctl \
  --cacert=/var/lib/minikube/certs/etcd/ca.crt \
  --cert=/var/lib/minikube/certs/etcd/peer.crt \
  --key=/var/lib/minikube/certs/etcd/peer.key \
  put Name wlstmd

ETCDCTL_API=3 etcdctl \
  --cacert=/var/lib/minikube/certs/etcd/ca.crt \
  --cert=/var/lib/minikube/certs/etcd/peer.crt \
  --key=/var/lib/minikube/certs/etcd/peer.key \
  get Name

#  모든 값 출력
ETCDCTL_API=3 etcdctl \
  --cacert=/var/lib/minikube/certs/etcd/ca.crt \
  --cert=/var/lib/minikube/certs/etcd/peer.crt \
  --key=/var/lib/minikube/certs/etcd/peer.key \
  get  / --prefix --keys-only