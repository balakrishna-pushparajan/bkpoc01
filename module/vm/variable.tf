variable "vm_name" {
  description = "vm name"
  default     = ""
  type        = string
}
variable "vm_size" {
  description = "vm size"
  default     = ""
  type        = string
}
variable "admin_username" {
  description = "admin user"
  default     = ""
  type        = string
}
variable "admin_password" {
  description = "admin password"
  default     = ""
  type        = string
}
variable "location_name" {
  description = "resource group location name"
  default     = "centralindia"
  type        = string
}
variable "resource_group_name" {
  description = "resource group name"
  default     = ""
  type        = string
}
variable "sku_name" {
  description = "sku_name"
  default     = ""
  type        = string
}
variable "name" {
  description = "nic name"
  default     = ""
  type        = string
}
variable "ipconfig_name" {
  description = "ipconfig  name"
  default     = "internal"
  type        = string
}
variable "snet_id" {
  description = "subnet id"
  default     = ""
  type        = string
}
variable "network_security_group_id" {
  description = "network_security_group_id"
  default     = ""
  type        = string
}

