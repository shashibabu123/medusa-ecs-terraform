module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = var.project_name
  cidr   = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]

  enable_dns_hostnames = true
  enable_dns_support   = true
}

module "ecs" {
  source = "./ecs"
}

