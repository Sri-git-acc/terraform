resource "aws_instance" "insta" {
    # count = length(var.instances)
    ami = local.ami_id
    instance_type = local.instance_type

    tags = merge(var.environment_variables, {
        # Name = var.instances[count.index]
        Name = local.proj_name
    })
}

