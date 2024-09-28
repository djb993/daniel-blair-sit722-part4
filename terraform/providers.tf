# Initialise Terraform providers and set version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {
  features {}

  subscription_id = var.azure_subscription_id
  client_id      = var.azure_client_id
  tenant_id      = var.azure_tenant_id
}
