module "module_rg" {
  source = "../../root/rg"
  rgs    = var.rgs

}

module "module_vnet" {
  depends_on = [module.module_rg]
  source     = "../../root/vnet"
  vnet       = var.vnet
}
module "module_subnet" {
  depends_on = [module.module_vnet]
  source     = "../../root/subnet"
  subnets    = var.subnets

}
module "module_nic" {
  depends_on        = [module.module_subnet]
  source            = "../../root/nic"
  network_interface = var.network_interface

}

module "module_pub" {
  depends_on = [module.module_nic]
  source     = "../../root/public_ip"
  pub_ip     = var.pub_ip

}
