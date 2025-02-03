resource "aws_instance" "insta" {
    count = length(var.instances)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"

    tags = {
        Name = "${var.project}-${var.environment}-${var.instances[count.index]}"
    }
}

resource "aws_security_group" "project-sg" {
    name = "${var.project}-${var.environment}"
    
    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}