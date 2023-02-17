module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  name = var.app_name
  cidr = "172.27.0.0/16"

  enable_dns_hostnames = true
  enable_nat_gateway   = true
  single_nat_gateway   = false
  
  azs              = ["ap-northeast-1a", "ap-northeast-1c"]
  public_subnets   = ["172.27.20.0/24", "172.27.21.0/24"]
  private_subnets  = ["172.27.30.0/24", "172.27.31.0/24"]
  database_subnets = ["172.27.40.0/24", "172.27.41.0/24"]
}
