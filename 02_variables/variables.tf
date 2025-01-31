variable region {
    type = string
    default = "us-east-1"
}

variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "var-insta"
    }
}

variable "sg_name" {
    type = string
    default = "allow tlp"
}

variable "ingress_from_port" {
    type = number
    default = 22
}

variable "ingress_to_port" {
    type = number
    default = 22
}

variable "ingress_protocol" {
    type = string
    default = "tcp"
}

variable "egress_from_port" {
    type = number
    default = 0
}

variable "egress_to_port" {
    type = number
    default = 0
}

variable "egress_protocol" {
    type = string
    default = "-1"
}

variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name: "allow tlp"
    }
}

variable "env" {
    default = "dev"
}