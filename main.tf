module "network" {
  source   = "./modules/network"
  location = var.location
}

module "compute" {
  source              = "./modules/compute"
  location            = var.location
  subnet_id           = module.network.subnet_id
  resource_group_name = module.network.resource_group_name
}

 module "storage" {
 source              = "./modules/storage"
 location            = var.location
 resource_group_name = module.network.resource_group_name
 }

 module "database" {
 source              = "./modules/database"
 location            = var.location
 resource_group_name = module.network.resource_group_name
 }