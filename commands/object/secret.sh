# 직접 값을 전달하여 생성
kubectl create secret generic --save-config test-secret --from-literal password=test1234
kubectl get secret test-secret -o yaml | yq .data
echo -n '<인코드값>' | base64 -d

# env 파일 값을 전달하여 생성
kubectl create secret generic --save-config test2-secret --from-env-file=db-secret.txt
kubectl get secret test2-secret -o yaml | yq .data
echo -n '<인코드값>' | base64 -d