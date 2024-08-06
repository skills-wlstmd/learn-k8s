# helm

- k8s 패키지 관리자
- 'Chart'라고 하는 패키지들을 관리
- template과 values.yaml파일을 이용해 어플리케이션을 구축

`Why Helm?`

- 가장 간단한 방법은 yaml형식으로 manifest 정의파일을 작성하여 적용(apply)하는 방법
- 하지만 시스템이 늘어나고, 환경(예. dev / stg / prod)이 늘어나면..
- 재사용이나 bulk 작업을 위한 효율화가 필요

`Helm chart 구조 예시 (wordpress)`

#### wordpress/

- Chart.yaml # 차트에 대한 정보
- LICENSE # 옵션 : 차트 라이센스에 대한 정보
- README.md # 옵션 : 차트에 대한 설명
- requirements.yaml # 차트의 의존성을 명시한 파일
- values.yaml #이 차트에서 사용하는 기본 설정 값
- charts/ # 이 차트에 관련 되어 있는 차트들
- templates/ # 매니페스트 파일들로 변환될 YAML템플릿
- templates/NOTES.txt # 옵션 : 짧은 사용법 설명
