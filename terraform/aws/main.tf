terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Map vCPU to a reasonable instance type (example mapping)
locals {
  instance_map = {
    1 = "t3.nano"
    2 = "t3.small"
    4 = "t3.xlarge"
    8 = "t3.2xlarge"
  }
  instance_type = lookup(local.instance_map, var.vcpu, "t3.small")
}

resource "aws_instance" "vm" {
  ami           = var.ami_id
  instance_type = local.instance_type
  tags = {
    Name = "infracost-aws-vm"
    Env  = var.environment
  }
}
