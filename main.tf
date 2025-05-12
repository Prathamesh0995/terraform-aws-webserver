module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr
  azs = var.azs
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_ids = module.vpc.public_subnet_ids
  security_group_id = module.security_group.web_sg_id
}

