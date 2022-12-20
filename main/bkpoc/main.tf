# get Subscription
data "azurerm_subscription" "bkpoc" {
  provider = azurerm.bkpoc
}
#load data module
module "data" {
  source = "../../module/data"
}
locals {
  tags = module.data.poc.tags
}

#Create Resource Group
module "resource_group" {
  source        = "../../module/resource-group"
  name          = module.data.bkpoc.resource_group
  location_name = var.location
  tags          = local.tags
}

#Create Virtual Network
module "vnet" {
  source              = "../../module/vnet"
  nsg_name            = module.data.bkpoc.nsg_name
  vnet_name           = module.data.bkpoc.vnet_name
  snet                = module.data.bkpoc.snet
  address_space       = module.data.bkpoc.address_space
  address_prefixes    = module.data.bkpoc.address_prefixes
  resource_group_name = module.data.bkpoc.resource_group
  location_name       = var.location
  depends_on = [
    module.resource_group
  ]
}


#create Virtual machine 
module "virtual_machine" {
  source                    = "../../module/vm"
  count                     = length(module.data.bkpoc.vm_name)
  vm_name                   = module.data.bkpoc.vm_name[count.index]
  resource_group_name       = module.data.bkpoc.resource_group
  location_name             = var.location
  vm_size                   = module.data.bkpoc.vm_size
  admin_username            = module.data.bkpoc.admin_username
  admin_password            = module.data.bkpoc.admin_password
  sku_name                  = module.data.bkpoc.sku_name
  name                      = "${module.data.bkpoc.vm_name[count.index]}-nic"
  ipconfig_name             = module.data.bkpoc.ipconfig_name
  snet_id                   = module.vnet.snet_id
  network_security_group_id = module.vnet.network_security_group_id

  depends_on = [
    module.vnet
  ]
}


#create SQL server and DB
module "sql" {
  source              = "../../module/sql"
  name                = module.data.bkpoc.server_name
  dbname              = module.data.bkpoc.dbname
  location_name       = var.location
  resource_group_name = module.data.bkpoc.resource_group
}

