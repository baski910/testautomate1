variable "linode_token" {
  type      = string
  sensitive = true
}

variable "region" {
  type    = string
  default = "us-east"
}

variable "instance_type" {
  type    = string
  default = "g6-standard-1" # 1GB Nanode / VM plan
}
