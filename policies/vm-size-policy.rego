package terraform.policies

deny contains msg if {
    input.resource_type == "azurerm_linux_virtual_machine"
    input.size == "Standard_D8s_v3"
    msg := "Large VM sizes are not allowed"
}