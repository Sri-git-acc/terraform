locals {
    ami_id = data.aws_ami.insta_ami.id
    instance_type = "t2.micro"
}