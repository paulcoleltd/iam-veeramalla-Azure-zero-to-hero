resource "azurerm_resource_group" "apprg" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    environment = "production"
  }
}

resource "azurerm_storage_account" "appstorage" {
  name                     = "appsdeploy87"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "production"
  }
}

resource "azurerm_service_plan" "myplan" {
  name                = var.app_service_plan_name
  resource_group_name = azurerm_resource_group.apprg.name
  location            = azurerm_resource_group.apprg.location
  sku_name            = "B1"
  os_type             = "Linux"
}

resource "azurerm_linux_web_app" "webapp87" {
  name                = "3tierwebapp24"
  resource_group_name = azurerm_resource_group.apprg.name
  location            = azurerm_service_plan.myplan.location
  service_plan_id     = azurerm_service_plan.myplan.id

  site_config {}

  depends_on = [
    azurerm_linux_web_app.webapp87
  ]
}

resource "azurerm_mssql_server" "appserver" {
  name                         = "sqlserver87"
  resource_group_name          = azurerm_resource_group.apprg.name
  location                     = azurerm_resource_group.apprg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "soumya@1987"
}

resource "azurerm_mssql_database" "myapp" {
  name           = "phpapp"
  server_id      = azurerm_mssql_server.appserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb    = 1
  read_scale     = false
  create_mode    = "Default"
  zone_redundant = false
}