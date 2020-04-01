resource "azurerm_resource_group" "test" {
  name     = "william-workshop"
  location = "CentralUS"
}

module "network" {
  source  = "app.terraform.io/hc-william-demo/network/azurerm"
  resource_group_name = azurerm_resource_group.test.name
  version = "3.0.1"
}
