module "instance" {
    source = "../../terraform-modules/ec2"
    sg_id = "sg-04c3a55634d7da8d9"

    tags = {
        Name = "instance"
    }
}

output "public_ip" {
    value = module.instance.public_ip
}

output "private_ip" {
    value = module.instance.private_ip
}