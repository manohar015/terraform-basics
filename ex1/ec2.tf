provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami = "ami-06876ae57f920d87d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allows_ssh.id]
  
  tags = {
    "Name" = "Linux Terraform"
  }
}

resource "aws_security_group" "allows_ssh" {
  name        = "allows_ssh"
  description = "Allow ssh inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allows_ssh"
  }
}