provider "aws" {
  region = "us-east-1"
}

data "aws_vpc" "vpc" {
}

data "aws_subnet" "zone1" {
  filter {
    name   = "tag:Name"
    values = ["SubnetA"]
  }
}

data "aws_subnet" "zone2" {
  filter {
    name   = "tag:Name"
    values = ["SubnetB"]
  }
}

resource "aws_instance" "ec2_instance_1" {
  subnet_id         = data.aws_subnet.zone1.id
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.az1
}

resource "aws_instance" "ec2_instance_2" {
  subnet_id         = data.aws_subnet.zone2.id
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.az2
}
