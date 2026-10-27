output "resource_group_name" {
  description = "The deployed Resource Group name"
  value       = module.resource_group.rg_name
}

output "resource_group_id" {
  description = "The deployed Resource Group ID"
  value       = module.resource_group.rg_id
}

output "virtual_network_name" {
  description = "The deployed Virtual Network name"
  value       = module.virtual_network.vnet_name
}

output "virtual_network_id" {
  description = "The deployed Virtual Network ID"
  value       = module.virtual_network.vnet_id
}

output "subnet_ids" {
  description = "Map of deployed subnet IDs"
  value       = module.virtual_network.subnet_ids
}
