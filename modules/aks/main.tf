resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  identity {
    type = "SystemAssigned"
  }

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  default_node_pool {
    name                         = "system"
    vm_size                      = var.vm_size
    node_count                   = var.node_count
    min_count                    = var.min_count
    max_count                    = var.max_count
    auto_scaling_enabled         = true
    type                         = "VirtualMachineScaleSets"
    os_disk_size_gb              = 128
    only_critical_addons_enabled = true

    upgrade_settings {
      max_surge = "10%"
    }
  }

  role_based_access_control_enabled = true

  tags = var.tags
}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = var.acr_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
}