resource "azurerm_resource_group" "rg" {
  name = "kusum-iac-rg"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name = "iac-vnet"
  address_space = ["10.0.0.0/16"]
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name = "iac-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_route_table" "rt" {
  name = "iac-route-table"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet_route_table_association" "assoc" {
  subnet_id = azurerm_subnet.subnet.id
  route_table_id = azurerm_route_table.rt.id
}