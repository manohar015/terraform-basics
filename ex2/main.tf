module "ec2" {
    source = "./ec2"
    sg = module.sg.sg_id
}

module "sg" {
    source = "./sg"
}

output "pub_Ip" {
    value = module.ec2.pub_id
}


