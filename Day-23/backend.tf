terraform {
  backend "azurerm" {
    resource_group_name  = "example-resources1"
    storage_account_name = "terraformstateconfig"
    container_name       = "backend"
    key                  = "prod.terraform.tfstate"
    access_key = "extract-access-key-from-azure-storage"
  }
}

