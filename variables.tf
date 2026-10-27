variable "rg_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "rg-pipeline-prod"
}

variable "location" {
  description = "Azure Region for infrastructure deployment"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "vnet-pipeline-prod"
}

variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Map of subnet names to address prefixes"
  type        = map(string)
  default = {
    "subnet-web" = "10.0.1.0/24"
    "subnet-app" = "10.0.2.0/24"
    "subnet-db"  = "10.0.3.0/24"
  }
}

variable "tags" {
  description = "Tags applied to all deployed resources"
  type        = map(string)
  default = {
    environment = "production"
    managed_by  = "terraform"
    architect   = "Mihir Maurya"
  }
}
