output "vm_size" {
  value = azurerm_linux_virtual_machine.vm.size
}

output "public_ip" {
  value = azurerm_public_ip.ip.ip_address
}
