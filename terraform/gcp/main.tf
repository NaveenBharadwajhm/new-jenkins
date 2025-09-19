terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

locals {
  machine_map = {
    1 = "e2-small"    # 2 vCPU fractional -> note: GCP e2-small has 2 vCPU fractional - you may prefer e2-micro elsewhere
    2 = "e2-standard-2"
    4 = "e2-standard-4"
    8 = "e2-standard-8"
  }
  machine_type = lookup(local.machine_map, var.vcpu, "e2-standard-2")
}

resource "google_compute_instance" "vm" {
  name         = "infracost-vm"
  machine_type = local.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "gcpuser:${var.ssh_public_key}"
  }

  tags = ["infracost"]
}
