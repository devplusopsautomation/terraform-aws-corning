terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
  }

  backend "remote" {
    organization = "CapgeminiCorning"

    workspaces {
      name = "Terraform"
    }
  }
}

resource "aws_instance" "ec2-terraform-prod" {
  provider          = aws.prod
  ami               = data.aws_ami.amazon_linux_ami_prod.image_id
  instance_type     = var.instance_type
  tags          = var.tag_nonprod
  
}

resource "aws_instance" "ec2-terraform-nonprod" {
  provider      = aws.nonprod
  ami           = data.aws_ami.amazon_linux_ami_non_prod.image_id
  instance_type = var.instance_type
  tags          = var.tag_nonprod


}


data "aws_ami" "amazon_linux_ami_prod" {
  provider    = aws.prod
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}


data "aws_ami" "amazon_linux_ami_non_prod" {
  provider    = aws.nonprod
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}
