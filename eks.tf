module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.0"

  cluster_name    = "challenge-eks"
  cluster_version = "1.30"
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = concat(module.vpc.public_subnets, module.vpc.private_subnets)

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    mng = {
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}