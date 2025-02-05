variable "project_name" {
    default = "Ansh"
}

variable "environment" {
    default = "dev"
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

variable "common_tags" {
    default = {
        Project = "Ansh"
        environment = "dev"
    }
}

variable "public_subnet_cidr_blocks" {
    default = ["10.0.11.0/24", "10.0.21.0/24"]
}

variable "private_subnet_cidr_blocks" {
    default = ["10.0.12.0/24", "10.0.22.0/24"]
}

variable "database_subnet_cidr_blocks" {
    default = ["10.0.13.0/24", "10.0.23.0/24"]
}