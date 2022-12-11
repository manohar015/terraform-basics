provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami = "ami-06876ae57f920d87d"
  instance_type = "t2.micro"

  tags = {
    "Name" = "valLinux Terraform"
  }
}