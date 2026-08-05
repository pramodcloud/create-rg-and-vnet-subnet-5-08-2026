data "azurerm_subnet" "subnet_data" {
 for_each=var.network_interface
name     = each.value.subnet_name
virtual_network_name= each.value.virtual_network_name_subnet
resource_group_name = each.value.resource_group_name_subnet

}
