terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../../modules/resource-group"

  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}
