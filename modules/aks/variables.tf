variable "name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group containing AKS"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS API server"
  type        = string
}

variable "vm_size" {
  description = "VM size for the AKS system node pool"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "node_count" {
  description = "Initial number of system nodes"
  type        = number
  default     = 2
}

variable "min_count" {
  description = "Minimum number of system nodes"
  type        = number
  default     = 2
}

variable "max_count" {
  description = "Maximum number of system nodes"
  type        = number
  default     = 3
}

variable "tags" {
  description = "Tags applied to AKS"
  type        = map(string)
  default     = {}
}
