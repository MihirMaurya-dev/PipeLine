variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "The Azure Region where the VNet should be created"
  type        = string
}

variable "rg_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
}

variable "subnets" {
  description = "A map of subnet names to their address prefixes"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to assign to the Virtual Network"
  type        = map(string)
  default     = {}
}
