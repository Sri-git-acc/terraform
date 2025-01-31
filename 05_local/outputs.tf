output "ami_output" {
    value = data.aws_ami.insta_ami
}

output "insta_vpc" {
    value = data.aws_vpc.vpc
}