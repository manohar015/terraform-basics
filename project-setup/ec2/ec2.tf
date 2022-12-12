resource "aws_spot_instance_request" "spot_worker" {
  ami = data.aws_ami.my_ami.id
  instance_type = "t2.micro"
  wait_for_fulfillment = true
  vpc_security_group_ids = [aws_security_group.allowed_ssh.id]

  tags = {
    "Name" = ${var.COMPONENT}
  }

  provisioner "remote-exec" {
    
    connection {
      type      = "ssh"
      user      = "centos"
      password  = "DevOps321"
      host      = self.public_ip
    }
    inline = [
      "ansible-pull -U https://github.com/manohar015/ansible.git -e COMPONENT=frontend -e ENV=dev -e APP_VERSION=${var.APP_VERSION} roboshop-pull.yml",
    ]
  }
}