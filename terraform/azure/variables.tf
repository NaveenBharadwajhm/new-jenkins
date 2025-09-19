variable "vcpu" {
  description = "Number of vCPUs for VM (will map to VM size). Default: 2"
  type        = number
  default     = 2
}

variable "prefix" {
  type    = string
  default = "infracost-azure"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "ssh_public_key" {
  description = "SSH public key for VM access"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "environment" {
  type    = string
  default = "dev"
}
