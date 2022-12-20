output "vm" {
  description = "vm resource id"
  value       = azurerm_windows_virtual_machine.general.id

}
output "vm-public_ip_address" {
  description = "vm public ip"
  value       = azurerm_windows_virtual_machine.general.public_ip_address

}
