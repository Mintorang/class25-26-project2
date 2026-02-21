module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "mo-vpc"
  cidr = "10.0.0.0/16"

  enable_nat_gateway      = true
  single_nat_gateway      = true
  map_public_ip_on_launch = true
  azs                     = ["us-east-1a", "us-east-1b"]
  public_subnets          = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets         = ["10.0.101.0/24", "10.0.102.0/24"]
}