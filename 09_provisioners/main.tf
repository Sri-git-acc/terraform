resource "aws_instance" "insta" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-04c3a55634d7da8d9"]

    tags = {
        Name = "Provision_insta"
    }

    provisioner "local-exec" {
        command = "echo ${self.private_ip} > inventory.ini"
    }

    connection {
        type = "ssh"
        user = "ec2-user"
        password = "DevOps321"
        host = self.public_ip
    }

    provisioner "remote-exec" {
        inline = [
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx",
        ]
    }

    provisioner "remote-exec" {
        when = destroy
        inline = [
            "sudo systemctl stop nginx",
        ]
    }
}



