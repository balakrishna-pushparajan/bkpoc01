output "address_space" {
  description = "Address space for Vnet"
  value       = azurerm_virtual_network.general.address_space
}

output "vnet_id" {
  description = "Vnet Id"
  value       = azurerm_virtual_network.general.id
}

output "location_name" {
  description = "Vnet Location"
  value       = azurerm_virtual_network.general.location
}

output "vnet_name" {
  description = "Vnet name"
  value       = azurerm_virtual_network.general.name
}

output "snet_id" {
  description = "subnet id"
  value       = azurerm_subnet.general.id
}

output "network_security_group_id" {
  description = "network_security_group_id"
  value       = azurerm_network_security_group.general.id

}
