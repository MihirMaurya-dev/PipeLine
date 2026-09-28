variable "rg_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should be created"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the Resource Group"
  type        = map(string)
  default     = {}
}
