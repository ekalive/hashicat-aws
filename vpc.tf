module "vpc" {
  source  = "app.terraform.io/ramkib-training/vpc/aws"
  version = "2.32.0"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-1", "us-west-2"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
