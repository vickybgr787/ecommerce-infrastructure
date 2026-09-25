resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  identity {
    type = "SystemAssigned"
  }

  oidc_issuer_enabled         = true
  workload_identity_enabled   = true

  default_node_pool {
    name                        = "system"
    vm_size                     = var.vm_size
    node_count                  = var.node_count
    min_count                   = var.min_count
    max_count                   = var.max_count
    auto_scaling_enabled        = true
    type                        = "VirtualMachineScaleSets"
    zones                       = ["1", "2", "3"]
    os_disk_size_gb             = 128
    only_critical_addons_enabled = true
  }

  role_based_access_control_enabled = true

  tags = var.tags
}
