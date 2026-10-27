rg_name       = "rg-pipeline-production"
location      = "East US"
vnet_name     = "vnet-pipeline-production"
address_space = ["10.0.0.0/16"]

subnets = {
  "subnet-web" = "10.0.1.0/24"
  "subnet-app" = "10.0.2.0/24"
  "subnet-db"  = "10.0.3.0/24"
}

tags = {
  environment = "production"
  managed_by  = "terraform"
  architect   = "Mihir Maurya"
}
