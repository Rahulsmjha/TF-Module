module "rg" {
  source = "../RG"
  rg1    = var.rg1
}
module "vnet" {
  source = "../VNet"
  Vnet   = var.Vnet
}
module "Subnet" {
  source = "../Subnet"
  Subnet = var.Subnet

}


module "Vm" {
  source = "../VM"
  Vm     = var.Vm

}