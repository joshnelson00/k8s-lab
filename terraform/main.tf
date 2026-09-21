provider "aws" {
  region  = var.aws_region
  profile = "terraform-local"
}

module "networking" {
  source = "./modules/networking"
}

module "security" {
  source = "./modules/security"

  network = module.networking.networking_ids
}

module "ec2_node" {
  source = "./modules/ec2-node"

  network  = module.networking.networking_ids
  security = module.security.security_ids
}
