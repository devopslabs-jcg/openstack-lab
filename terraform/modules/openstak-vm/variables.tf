variable "vm_name" {
  description = "가상머신의 이름"
  type        = string
}

variable "vm_image_path" {
  description = "VM을 생성할 ISO 파일의 로컬 경로"
  type        = string
}

variable "vm_cpus" {
  description = "VM에 할당할 CPU 코어 수"
  type        = number
  default     = 4
}

variable "vm_memory_mb" {
  description = "VM에 할당할 메모리 (MB)"
  type        = number
  default     = 16384 # 16 GB
}

variable "host_network_interface" {
  description = "브릿지로 사용할 호스트 PC의 네트워크 인터페이스 이름"
  type        = string
}

variable "install_script_path" {
  description = "VM 안에서 실행할 설치 스크립트의 로컬 경로"
  type        = string
}

variable "vm_user" {
  description = "VM에 SSH 접속할 사용자 이름"
  type        = string
  default     = "ubuntu"
}

variable "vm_password" {
  description = "VM에 SSH 접속할 사용자의 비밀번호"
  type        = string
  sensitive   = true # 비밀번호 값이 터미널에 노출되지 않도록 함
}
