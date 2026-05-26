package terraform.policies

deny contains msg if {
    input.resource_type == "azurerm_storage_account"
    input.public_network_access_enabled == true
    msg := "Public access to storage accounts is not allowed"
}