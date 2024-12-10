module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-as-eks"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.50.0/24", "10.0.60.0/24"]
  public_subnets  = ["10.0.70.0/24", "10.0.80.0/24"]

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }
  
  enable_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}