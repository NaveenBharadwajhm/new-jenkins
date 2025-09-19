variable "vcpu" {
  type    = number
  default = 4
}

variable "project" {
  type    = string
  default = "my-gcp-project" # replace
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "ssh_public_key" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

