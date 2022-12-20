locals {
  poc = {
    tags = {
      creator      = "bk"
      orchestrator = "terraform"
    }
  }
  bkpoc = {
    resource_group         = "rg-bkpoc-dev"
    nsg_name               = "bkpoc-nsg"
    vnet_name              = "bkpoc-vnet"
    snet                   = "bkpoc-snet"
    address_space          = ["10.0.0.0/16"]
    address_prefixes       = ["10.0.1.0/24"]
    ipconfig_name          = "bkpoc-internal"
    nicname                = "bkpoc-nic"
    public_ip_name         = "bkpoc-pub-ip-lb"
    Loadbalancer_name      = "bkpoc-lb"
    public_ip_address_name = "bkpoc-pub-ip-address"
    backend_address_pool   = "bkpoc-backend-address"
    vm_name                = ["bkpoc-vm-01", "bkpoc-vm-02"]
    vm_size                = "Standard_F2"
    admin_username         = "adminbkpoc"
    admin_password         = "P@ssw0rd74125"
    sku_name               = "2016-Datacenter"
    server_name            = "bkpoc-sql"
    dbname                 = "bkpocdb"


  }
}
output "bkpoc" {
  value = local.bkpoc
}
output "poc" {
  value = local.poc
}
