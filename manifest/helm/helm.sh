# helm 차트 구성 (nginx)
# bitnami repo 추가
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# 차트 검색
helm search repo bitnami
helm search repo bitnami/nginx  

# 차트 설치
helm show values bitnami/nginx
helm install bitnami-nginx bitnami/nginx

# 설치된 repo 확인
helm repo list 

# 설치된 차트 확인
helm list 

# 차트 상태 확인
helm status bitnami-nginx

# 차트 삭제
helm delete bitnami-nginx 
