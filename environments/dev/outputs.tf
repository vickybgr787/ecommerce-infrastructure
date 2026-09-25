output "resource_group_name" {
  description = "Created Resource Group name"
  value       = module.resource_group.name
}

output "resource_group_location" {
  description = "Resource Group location"
  value       = module.resource_group.location
}

output "resource_group_id" {
  description = "Created Resource Group ID"
  value       = module.resource_group.id
}

output "acr_name" {
  description = "Azure Container Registry name"
  value       = module.acr.name
}

output "acr_login_server" {
  description = "Azure Container Registry login server"
  value       = module.acr.login_server
}

output "acr_id" {
  description = "Azure Container Registry resource ID"
  value       = module.acr.id
}