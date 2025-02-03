resource "aws_instance" "insta" {
    count = length(var.instances)
    ami = "ami-09c813fb71547fc4f"
    instance_type = lookup(var.instance_type, terraform.workspace)

    tags = {
        Name = "${var.project}-${var.instances[count.index]}-${terraform.workspace}"
    }
}