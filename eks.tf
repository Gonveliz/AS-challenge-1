module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.0"

  cluster_name    = "challenge-eks"
  cluster_version = "1.28"
  vpc_id         = aws_vpc.main.id
  subnet_ids     = [aws_subnet.public_1.id, aws_subnet.public_2.id]

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    example = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}