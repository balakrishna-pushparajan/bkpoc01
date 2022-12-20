resource "azurerm_network_security_group" "general" {
  name                = var.nsg_name
  location            = var.location_name
  resource_group_name = var.resource_group_name
}
resource "azurerm_virtual_network" "general" {
  name                = var.vnet_name
  location            = var.location_name
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}
resource "azurerm_subnet" "general" {
  name                 = var.snet
  address_prefixes     = var.address_prefixes
  virtual_network_name = azurerm_virtual_network.general.name
  resource_group_name  = var.resource_group_name
}
