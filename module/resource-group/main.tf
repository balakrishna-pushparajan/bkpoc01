resource "azurerm_resource_group" "general" {
  name     = var.name
  location = var.location_name
  tags     = var.tags

}