resource "aws_instance" "insta" {
    count = length(var.instances)
    ami = data.aws_ami.insta_ami.id
    instance_type = var.instance_type

    tags = merge(var.environment_variables, {
        Name = var.instances[count.index]
    })
}

