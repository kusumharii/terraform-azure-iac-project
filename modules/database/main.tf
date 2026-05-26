resource "azurerm_mssql_server" "sqlserver" {
  name = "kusum-iac-sql-server"
  resource_group_name = var.resource_group_name
  location = var.location
  version = "12.0"
  administrator_login = "azureadmin"
  administrator_login_password = "Password1234!"
}

resource "azurerm_mssql_database" "sqldb" {
  name = "iac-db"
  server_id = azurerm_mssql_server.sqlserver.id
  sku_name  = "Basic"
}