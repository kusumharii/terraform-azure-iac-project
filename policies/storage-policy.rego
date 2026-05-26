package terraform.security

deny[msg] {
  input.resource_type == "azurerm_storage_account"
  input.public == true
  msg := "Public storage accounts are not allowed"
}