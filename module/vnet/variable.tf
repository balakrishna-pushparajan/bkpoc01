variable "nsg_name" {
  description = "Network security group name"
  default     = ""
  type        = string
}
variable "vnet_name" {
  description = "vnet name"
  default     = ""
  type        = string
}
variable "snet" {
  description = "subnet name"
  default     = ""
  type        = string
}
variable "location_name" {
  description = "resource group location name"
  default     = "centralindia"
  type        = string
}
variable "address_space" {
  description = "resource group location name"
  default     = ["10.0.0.0/16"]
  type        = list(string)
}
variable "resource_group_name" {
  description = "resource group name"
  default     = ""
  type        = string
}
variable "address_prefixes" {
  description = "address_prefixes"
  default     = ["10.0.1.0/24"]
  type        = list(string)
}
variable "ipconfig_name" {
  description = "ipconfig  name"
  default     = "internal"
  type        = string
}
variable "nicname" {
  description = "nic name"
  default     = ""
  type        = string
}