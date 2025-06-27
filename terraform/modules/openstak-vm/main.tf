# '오픈스택 VM'이라는 재사용 가능한 모듈을 정의.
# --------------------------------------------------

resource "virtualbox_vm" "node" {
  name   = var.vm_name
  image  = var.vm_image_path
  status = "running"

  cpus   = var.vm_cpus
  memory = "${var.vm_memory_mb} mib"

  network_adapter {
    type           = "bridged"
    host_interface = var.host_network_interface
  }

  # VM에 SSH로 접속하기 위한 정보
  connection {
    type     = "ssh"
    user     = var.vm_user
    password = var.vm_password
    host     = self.network_adapter[0].ipv4_address
  }

  # VM 생성 후 스크립트 복사 및 실행
  provisioner "file" {
    source      = var.install_script_path
    destination = "/tmp/install.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install.sh",
      "sudo /tmp/install.sh"
    ]
  }
}
