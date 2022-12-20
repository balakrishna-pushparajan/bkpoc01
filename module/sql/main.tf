resource "azurerm_mssql_server" "general" {
  name                         = var.name
  resource_group_name          = var.resource_group_name
  location                     = var.location_name
  version                      = "12.0"
  administrator_login          = "sqllogin"
  administrator_login_password = "P@ssw0rd!@#$"
  minimum_tls_version          = "1.2"

}
resource "azurerm_mssql_database" "general" {
  name           = var.dbname
  server_id      = azurerm_mssql_server.general.id
  max_size_gb    = 1
  sku_name       = "Basic"
}
