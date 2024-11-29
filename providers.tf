provider "aws" {
  region = "ap-south-1"
  alias  = "prod"
}

provider "aws" {
  region = "us-east-1"
  alias  = "nonprod"
}
