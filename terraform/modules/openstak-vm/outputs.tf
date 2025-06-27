output "vm_ip_address" {
  description = "생성된 VM의 IP 주소"
  value       = resource.virtualbox_vm.node.network_adapter[0].ipv4_address
}

output "vm_name" {
  description = "생성된 VM의 이름"
  value       = resource.virtualbox_vm.node.name
}
