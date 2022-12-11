terraform {
  backend "s3" {
    bucket = "manohar-b50-tf-state-bucket"
    key    = "module/env/terraform.tfstate"
    region = "us-east-1"
  }
}