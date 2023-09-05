provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

  name = "vpc-terragrunt"

  azs             = ["us-east-1a", "us-east-1b"]
  cidr            = "172.30.0.0/16"
  private_subnets = ["172.30.0.0/24", "172.30.1.0/24"]
  public_subnets  = ["172.30.2.0/24", "172.30.3.0/24"]

  map_public_ip_on_launch = true
  enable_dns_hostnames    = true
  enable_nat_gateway      = true
  single_nat_gateway      = true

  tags = {
    Terraform = "true"
  }
}

resource "aws_instance" "ec2_instance_0" {
  subnet_id     = module.vpc.public_subnets[0]
  ami           = var.ami
  instance_type = var.instance_type
}

resource "aws_instance" "ec2_instance_1" {
  subnet_id     = module.vpc.public_subnets[1]
  ami           = var.ami
  instance_type = var.instance_type
}
