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
