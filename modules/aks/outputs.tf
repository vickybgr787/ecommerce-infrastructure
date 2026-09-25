output "name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.this.name
}

output "id" {
  description = "AKS cluster resource ID"
  value       = azurerm_kubernetes_cluster.this.id
}

output "fqdn" {
  description = "AKS API server FQDN"
  value       = azurerm_kubernetes_cluster.this.fqdn
}

output "kubernetes_version" {
  description = "AKS Kubernetes version"
  value       = azurerm_kubernetes_cluster.this.kubernetes_version
}
