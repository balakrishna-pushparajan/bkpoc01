resource "azurerm_network_interface" "general" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location_name
  ip_configuration {
    name                          = var.ipconfig_name
    subnet_id                     = var.snet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface_security_group_association" "general" {
  network_interface_id      = azurerm_network_interface.general.id
  network_security_group_id = var.network_security_group_id
}

resource "azurerm_windows_virtual_machine" "general" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location_name
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.general.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.sku_name
    version   = "latest"
  }
}
