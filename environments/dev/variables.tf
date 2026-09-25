variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS API server"
  type        = string
}

variable "aks_vm_size" {
  description = "VM size for the AKS system node pool"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "aks_node_count" {
  description = "Initial number of AKS system nodes"
  type        = number
  default     = 2
}

variable "aks_min_count" {
  description = "Minimum number of AKS system nodes"
  type        = number
  default     = 2
}

variable "aks_max_count" {
  description = "Maximum number of AKS system nodes"
  type        = number
  default     = 3
}