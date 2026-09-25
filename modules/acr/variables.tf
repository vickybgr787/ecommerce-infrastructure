variable "name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group containing the ACR"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "sku" {
  description = "ACR SKU"
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Tags applied to the ACR"
  type        = map(string)
  default     = {}
}