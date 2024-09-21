module "networking" {
  source     = "./modules/networking"
  prefix     = var.prefix
  cidr_block = var.vpc_cidr_block
}

module "eks" {
  source            = "./modules/eks"
  prefix            = var.prefix
  cluster_name      = var.cluster_name
  desired_size      = var.desired_size
  max_size          = var.max_size
  min_size          = var.min_size
  retention_in_days = var.retention_in_days
  vpc_id            = module.networking.vpc_id
  subnet_ids        = module.networking.subnet_ids
}
