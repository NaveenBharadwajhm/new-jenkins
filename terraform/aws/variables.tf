variable "vcpu" {
  description = "Number of vCPUs (mapping to instance type). Use 2 for default 2-core VM."
  type        = number
  default     = 2
}

variable "ami_id" {
  description = "AMI ID to use (must be valid in the region)."
  type        = string
  default     = "ami-0c02fb55956c7d316" # example: Amazon Linux 2 (replace as needed)
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "dev"
}
