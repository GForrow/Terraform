provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
}

module "gary_instance" {
  source = "./EC2"
  subnet_a_id = module.gary_vpc.subnet_a_id
  vpc_security_group_ids = module.gary_SG.vpc_security_group_ids
}

module "gary_SG" {
  source = "./SG"
  vpc_id = module.gary_vpc.vpc_id
}

module "gary_vpc" {
  source = "./VPC"
}