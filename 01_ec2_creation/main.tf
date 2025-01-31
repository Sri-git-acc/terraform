resource "aws_instance" "insta" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"

    tags = {
        Name = "Insta"
    }
} 

resource "aws_security_group" "allow_tls" {
    name          = "allow tls"
    description   = "Allow TLS inbound and outbound traffic"

    ingress {
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

     egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_tls"
    }
}