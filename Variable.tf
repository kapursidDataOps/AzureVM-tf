variable "subscriptionID" {
    type = string
    description = "Variable for our resource group"
}

variable "resourceGroupName" {
    type = string
    description = "name of resource group"
}

variable "location" {
    type = string
    description = "location of your resource group"
}

variable "network_interface_id" {
    type = string
}

variable "name" {
    type = string
    description = "Name of the virtual machine"
}

variable "vm_size" {
    type = string
    description = "size of the VM"
    default = "Standard_DS1_v2"
}

variable "publisher" {
    type = string
    default = "Canonical"
}

variable "offer" {
    type = string
    default = "UbuntuServer"
}

variable "sku" {
    type = string
    default = "18.04-LTS"
}

variable "version" {
    type = string
    default = "latest"
}