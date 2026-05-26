package terraform.policies

deny[msg] {
  input.resource_type == "azurerm_linux_virtual_machine"
  input.size == "Standard_B2ats_v2"
  msg = "Large VM sizes are not allowed"
}