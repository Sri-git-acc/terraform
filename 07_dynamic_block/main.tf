resource "aws_security_group" "sg" {
    name = "sriyaandansh_sg"
    description = "Security group for website sriyaandansh.fun"

    dynamic "ingress" {
        for_each = var.ingress_ports
        content {
            from_port = ingress.value["from_port"]
            to_port   = ingress.value["to_port"]
            protocol  = ingress.value["protocol"]
            cidr_blocks = ingress.value["cidr_blocks"]
        }
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
