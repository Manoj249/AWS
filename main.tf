module "vpc" {
  source = "./modules/vpc"
  name = var.project_name
  cidr_block = var.vpc_cidr
  public_subnets = var.public_subnets
}

module "s3_backend" {
  source = "./modules/S3"
  bucket_name = "${var.project_name}-tfstate"
}

module "ec2" {
  source = "./modules/ec2"
  name   = "${var.project_name}-srv"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets_ids
  ami = var.ami
  instance_type = var.instance_type
  instance_count = var.instance_count
  ingress_ports = var.ingress_ports
}