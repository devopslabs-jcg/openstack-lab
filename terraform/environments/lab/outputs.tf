output "OpenStack_Dashboard_URL" {
  description = "접속 가능한 오픈스택 대시보드 URL"
  value       = "http://${module.openstack_lab_vm.vm_ip_address}"
}

output "VM_IP_Address" {
  description = "생성된 VM의 IP 주소 (SSH 접속용)"
  value       = module.openstack_lab_vm.vm_ip_address
}
