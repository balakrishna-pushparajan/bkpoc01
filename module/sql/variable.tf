variable "name" {
  description = "server name"
  default     = ""
  type        = string
}
variable "dbname" {
  description = "db name"
  default     = ""
  type        = string
}
variable "resource_group_name" {
  description = "resource group name"
  default     = ""
  type        = string
}
variable "location_name" {
  description = "resource group location name"
  default     = "centralindia"
  type        = string
}