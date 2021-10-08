rovider "azurerm" {
  version         = "2.0.0"
  subscription_id = var.subscriptionID

  features {}
}

resource "azurerm_virtual_machine" "DevVM" {
  name                  = var.name 
  location              = var.location
  resource_group_name   = var.resourceGroupName
  network_interface_ids = ["${var.network_interface_id}"]
  vm_size               =  var.vm_size 

  storage_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version
  }

  storage_os_disk {
    name              = "disk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "dev01"
    admin_username = "azureuser"
    admin_password = "1111111111111"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    environment = "Development"
  }
}