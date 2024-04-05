variable "resource_group_name" {
  type        = string
  description = "name of resourcegroup"
}

variable "resource_group_location" {
  type        = string
  description = "name of resource group location"

}

variable "app_service_plan_name" {
  type        = string
  description = "name of app service plan"
}

variable "app_service_name" {
  type        = string
  description = "App service plan name in Azure "
}

variable "sql_server_name" {
  type        = string
  description = "SQL server name in Azure"
}

variable "sql_database_name" {
  type        = string
  description = "SQL database name in Azure"
}

variable "sql_admin_password" {
  type        = string
  description = "SQL server password name in Azure"
}

variable "storage_acc_name" {
  type        = string
  description = "Name of storage account"
}