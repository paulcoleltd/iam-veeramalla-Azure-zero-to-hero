terraform {
  backend "azurerm" {
    resource_group_name  = "example-resources1"
    storage_account_name = "terraformstateconfig"
    container_name       = "backend"
    key                  = "prod.terraform.tfstate"
    access_key = "HPZyb8u83UkNqGO5J4YZkZyIIpzxh1m3r209XJA6R4FWdT5rpGfmij3YTtw1oazXCnqVgsXMf9kS+AStOrvqIQ=="
  }
}

