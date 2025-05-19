module "aws_vpc" {
 source = "git::https://github.com/Ahmed-Osama-Taha/EKS-VPC-Terraform-Modules.git//modules/vpc?ref=main"
 vpc_cidr = var.vpc_cidr
 cluster_name = var.cluster_name
 availability_zone = var.availability_zone
 private_subnet_cidrs = var.private_subnet_cidrs
public_subnet_cidrs = var.public_subnet_cidrs
}

module "aws_eks" {
  source = "git::https://github.com/Ahmed-Osama-Taha/EKS-VPC-Terraform-Modules.git//modules/eks?ref=main"
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids = module.aws_vpc.private_subnet_ids
  node_groups = var.node_groups
  vpc_id = module.aws_vpc.vpc_id
}