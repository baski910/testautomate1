resource "linode_instance" "jenkins_vm" {
  label           = "jenkins-provisioned-vm"
  image           = "linode/ubuntu22.04"
  region          = var.region
  type            = var.instance_type
  authorized_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE06KaZ0EDcCMS8Hf2ItnOrIbmMyAolJjoWXlTma0hrw admin@localhost"]
}

output "vm_public_ip" {
  value       = linode_instance.jenkins_vm.ip_address
  description = "The public IP of the newly created Linode VM"
}
