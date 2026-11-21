resource "azurerm_resource_group" "rg123" {
    for_each = var.rgs
  name =each.value.rg_name
  location =each.value.location
}