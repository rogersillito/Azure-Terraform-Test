# Configure the provider
provider "azurerm" {
    version = "=1.20.0"
}

# Setup vars
variable "resource_location" {
  type    = "string"
  default = "ukwest"
}
variable "name_prefix" {
  type    = "string"
  default = "TEST"
}


# Create a new resource group
resource "azurerm_resource_group" "rg" {
    name     = "${var.name_prefix}-WRS-GROUP2"
    location = "${var.resource_location}"
}

# Create 3 vnets in the above group
resource "azurerm_virtual_network" "vnet" {
  count               = 3
  name                = "${var.name_prefix}-tf-vnet${count.index + 1}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location            = "${azurerm_resource_group.rg.location}"
  address_space       = ["10.0.0.0/16"]
}

# resource "azurerm_api_management" "test" {
#   name                = "example-apim"
#   location            = "${azurerm_resource_group.rg.location}"
#   resource_group_name = "${azurerm_resource_group.rg.name}"
#   publisher_name      = "Newcastle Systems Management Limited"
#   publisher_email     = "company@terraform.io"
#
#   sku {
#     name     = "Developer"
#     capacity = 1
#   }
# }
