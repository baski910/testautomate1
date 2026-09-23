resource "linode_instance" "debian_vm" {
  label           = "debian-13-2gb-vm"
  region          = "us-east" # Change to your preferred region (e.g., ap-south, eu-west)
  type            = "g6-standard-1" # 2 GB RAM, 1 vCPU, 50 GB Disk
  image           = "linode/debian13"
  root_pass       = random_password.root_pass.result
  authorized_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMenziMZ+/12c6aXda0qJKVY/pV+F4iW02gyB4HTa6Wr admin@localhost"] # Optional but recommended
}

output "vm_public_ip" {
  value       = linode_instance.jenkins_vm.ip_address
  description = "The public IP of the newly created Linode VM"
}
