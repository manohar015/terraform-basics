resource "aws_security_group" "allowed_ssh" {
  name        = "allowed_${var.COMPONENT}"
  description = "Allow ssh inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

    
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allowed_${var.COMPONENT}"
  }
}

output "sg_id" {
value = aws_security_group.allowed_ssh.id
 }