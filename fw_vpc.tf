#-----------------------------------------------------------------------------------------------
# Create firewall VPCs & subnets
module "vpc_mgmt" {
  source = "./modules/vpc/"

  vpc                  = var.mgmt_vpc
  subnets              = var.mgmt_subnet
  cidrs                = var.mgmt_cidr
  regions              = var.regions
  allowed_sources      = var.mgmt_sources
  allowed_protocol     = "TCP"
  allowed_ports        = ["443", "22"]
}

module "vpc_untrust" {
  source = "./modules/vpc/"

  vpc                  = var.untrust_vpc
  subnets              = var.untrust_subnet
  cidrs                = var.untrust_cidr
  regions              = var.regions
  allowed_sources      = [var.mgmt_sources[0], "35.191.0.0/16", "130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22"]
}

module "vpc_trust" {
  source = "./modules/vpc/"

  vpc                  = var.trust_vpc
  subnets              = var.trust_subnet
  cidrs                = var.trust_cidr
  regions              = var.regions
  allowed_sources      = ["10.0.0.0/8", "192.168.0.0/16", "130.211.0.0/22", "35.191.0.0/16"]
  delete_default_route = true
}

