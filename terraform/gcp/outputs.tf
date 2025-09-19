output "machine_type" {
  value = google_compute_instance.vm.machine_type
}

output "public_ip" {
  value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}
