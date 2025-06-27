variable "vm_name" {
  default = "ubuntu-24-microstack-lab"
}

variable "vm_image_path" {
  # 예시: "/Users/jcg/Downloads/ubuntu-24.04.2-live-server-amd64.iso"
  default = ""
}

variable "host_network_interface" {
  # 예시: "en0: Wi-Fi" 또는 "eth0"
  default = ""
}

variable "install_script_path" {
  default = "../../../scripts/install_microstack.sh" # main.tf 기준 상대 경로
}

variable "vm_password" {
  default = "tkfkd116"
}
