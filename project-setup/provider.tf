provider "aws" {
    region = "us-east-1"
  
}

terraform {
  backend "s3" {
    bucket = "manohar-b50-tf-state-bucket"
    key    = "project/env/terraform.tfstate"
    region = "us-east-1"
  }
}