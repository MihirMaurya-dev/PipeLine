terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./resource-group"
  rg_name  = var.rg_name
  location = var.location
  tags     = var.tags
}

module "virtual_network" {
  source        = "./vnet"
  vnet_name     = var.vnet_name
  location      = module.resource_group.rg_location
  rg_name       = module.resource_group.rg_name
  address_space = var.address_space
  subnets       = var.subnets
  tags          = var.tags
}
