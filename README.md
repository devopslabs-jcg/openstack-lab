# My OpenStack Learning Lab

## 프로젝트 목표

Terraform을 사용하여 인프라 프로비저닝을 자동화하고, 쉘 스크립트를 통해 VM 내부에 Canonical의 MicroStack을 자동으로 설치 및 구성.

## 기술 스택

- **IaC:** Terraform
- **Cloud Platform:** OpenStack (via MicroStack)
- **Virtualization:** VirtualBox
- **OS:** Ubuntu 24.04.2 LTS
- **Automation:** Bash Script

## 실행 방법

1.  `terraform/environments/lab/variables.tf` 파일에 자신의 환경에 맞는 값(ISO 경로, 비밀번호 등)을 입력.
2.  터미널에서 `terraform/environments/lab` 디렉토리로 이동.
3.  아래 명령어를 순서대로 실행.

    ```bash
    # 테라폼 초기화
    terraform init

    # 실행 (VM 생성부터 OpenStack 설치까지 자동 진행)
    terraform apply --auto-approve
    ```
4.  실행이 완료되면 출력된 `OpenStack_Dashboard_URL`로 접속하여 결과를 확인.
