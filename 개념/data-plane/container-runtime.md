# container-runtime

- 실제로 컨테이너를 실행시키는 런타임 환경
- 가장 많이 사용하는 런타임으로 Docker를 주로 사용 (했으나..)
  - containerd <- eks 사용
  - CRI-O
  - Docker Engine
  - Mirantis Container Runtime

`고수준과 저수준 런타임`
![container-runtime](https://github.com/user-attachments/assets/2ff46597-3053-4522-bb99-0677eb7ff001)

- 고수준 (high-level) : containerd, CRI-O, docker
- 저수준 (low-level) : runc, runv
