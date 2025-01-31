resource "aws_instance" "insta" {
    ami           = var.ami
    instance_type = var.instance_type   
    # instance_type = var.env == "dev" ? "m5.large" : "a2.small" /*** conditional statement ***/

    tags = var.tags
}

resource "aws_security_group" "all_tlp" {
    name = var.sg_name
    description = "allow inbount and outbound traffic to tlp"

    ingress {
        from_port = var.ingress_from_port
        to_port = var.ingress_to_port
        protocol = var.ingress_protocol
        cidr_blocks = var.cidr_blocks
    }

    egress {
        from_port = var.egress_from_port
        to_port = var.egress_to_port
        protocol = var.ingress_protocol
        cidr_blocks = var.cidr_blocks
    }

    tags = var.sg_tags
}