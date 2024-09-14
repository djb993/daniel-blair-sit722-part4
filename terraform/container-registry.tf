resource "azurerm_container_registry" "djb993cr" {
    name = "djb993cr"
    resource_group_name = azurerm_resource_group.djb993rg.name
    location = azurerm_resource_group.djb993rg.location
    sku = "Basic"
}