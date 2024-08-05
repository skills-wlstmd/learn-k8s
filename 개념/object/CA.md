# Cluster Autoscaler

- 수요에 따라 k8s Node를 자동으로 추가하는 기능
  - 리소스 부족으로 pod의 Node할당이 pending 될때 (scale-out)
  - 미사용 Node가 있을때 (scale-in)
- 각 cloud provider 마다 각자의 cluster autoscaling 방법이 있음

`AWS AutoScaling`

<img width="998" alt="AWS ASG" src="https://github.com/user-attachments/assets/a8d8da79-4f7e-439d-bc8e-a966a8ef5f29">
