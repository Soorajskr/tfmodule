provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "rgname" {
    name = var.rgname
    location = var.location
  
}

resource "azurerm_virtual_network" "vnet" {
    name = var.vnetname
    location = var.location
    resource_group_name = var.rgname
    address_space = [var.vnetcidr]
    depends_on = [ azurerm_resource_group.rgname ]
  
}
