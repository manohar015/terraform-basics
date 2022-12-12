resource "aws_instance" "demo1" {
  ami = "ami-06876ae57f920d87d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg]
  
  tags = {
    "Name" = "valLinux Terraform"
  }
}

variable "sg" {}

output "pub_ip" {
  value = aws_instance.demo1.public_ip
  
}