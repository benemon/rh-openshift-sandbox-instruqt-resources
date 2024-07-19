resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group
  location = var.region
}

resource "azurerm_dns_zone" "dns-zone" {
  name                = var.base_domain
  resource_group_name = azurerm_resource_group.resource_group.name
}
