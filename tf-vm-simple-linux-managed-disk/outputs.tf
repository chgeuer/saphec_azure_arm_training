output "hostname" {
  value = "${var.hostname}"
}

output "vm_fqdn" {
  value = "${azurerm_public_ip.pip.fqdn}"
}

output "ssh_command" {
  value = "ssh ${var.admin_username}@${azurerm_public_ip.pip.fqdn}"
}