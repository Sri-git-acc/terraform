resource "aws_instance" "insta" {
    count = length(var.instances)
    ami = var.ami
    instance_type = var.instance_type

    tags = merge(var.environment_variables, {
        Name = var.instances[count.index]
    })
}