rg1 = {
  rg2 = {
    name     = "dhondhurg"
    location = "westus"
  }
}
Vnet = {
  Vnet1 = {
    name                = "dhondhu-vnet"
    location            = "westus"
    resource_group_name = "dhondhurg"
    address_space       = ["10.0.0.0/16"]
  }
}

Subnet = {
  Subnet1 = {

    name                 = "dhondhusubnet"
    resource_group_name  = "dhondhurg"
    virtual_network_name = "dhondhu-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}



Vm = {
  Vm1 = {
    name    = "LinuxVM"
    nicname = "dhondhunic"

    resource_group_name  = "dhondhurg"
    virtual_network_name = "dhondhu-vnet"
    location             = "westus"
    datasubnet           = "dhondhusubnet"
  }
}
