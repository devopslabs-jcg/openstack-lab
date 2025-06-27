# 'lab' 환경에서 'openstack-vm' 모듈을 호출하여 VM을 생성.
# --------------------------------------------------

module "openstack_lab_vm" {
  source = "../../modules/openstack-vm" # 사용할 모듈의 경로

  # 모듈에 전달할 변수값들
  vm_name                = var.vm_name
  vm_image_path          = var.vm_image_path
  host_network_interface = var.host_network_interface
  install_script_path    = var.install_script_path
  vm_password            = var.vm_password
}
