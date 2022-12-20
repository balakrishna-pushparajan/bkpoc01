variable "name" {
  description = "resource group name"
  default     = ""
  type        = string
}
variable "location_name" {
  description = "resource group location name"
  default     = "centralindia"
  type        = string
}
variable "tags" {
  description = "tags"
  default     = {}
  type        = map(string)
}

