ami_prod      = "ami-068e0f1a600cd311c"
ami_nonprod   = "ami-0ae8f15ae66fe8cda"
instance_type = "t2.micro"
tag_prod = {
  Name       = "ec2-terraform-production"
  Created_By = "IAC-terraform"
}

tag_nonprod = {
  Name       = "ec2-terraform-non-production"
  Created_By = "IAC-terraform"
}

subnet_cidrs = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
