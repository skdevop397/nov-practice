module "resource_group" {
  source = "../../module/resource_group"
  rgs=var.rgs
}

module "virtual_network" {
  source = "../../module/virtual_network"
  vnets = var.vnets
  depends_on = [ module.resource_group ]
}

module "subnet" {
  source = "../../module/subnet"
  subnets = var.subnets
  depends_on = [ module.virtual_network ]
}

module "public_ip" {
  source = "../../module/public_ip"
  public_ips = var.public_ips
  depends_on = [ module.subnet ]
}