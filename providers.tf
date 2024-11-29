provider "aws" {
  region = "ap-south-1"
  alias  = "prod"
  access_key = "AKIA3FLDZZRK35BQH36R"
  secret_key = "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"
}

provider "aws" {
  region = "us-east-1"
  alias  = "nonprod"
  access_key = "AKIA3FLDZZRK35BQH36R"
  secret_key = "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"
}
