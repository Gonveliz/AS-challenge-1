# Modulo EKS
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "17.19.0"

  cluster_name    = "challenge-eks"
  cluster_version = "1.24"

  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.public_1.id, aws_subnet.public_2.id]

  node_groups = {
    example = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
    }
  }

  manage_aws_auth = true
  write_kubeconfig = true

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}