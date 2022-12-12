data "aws_ami" "my_ami" {
  most_recent = true
  name_regex  = "Boto_Image"
  owners      = ["self"]
}

