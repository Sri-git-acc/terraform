variable region {
    type = string
    default = "us-east-1"
}

# variable "ami" {
#     default = "ami-09c813fb71547fc4f"
# }

# variable "instance_type" {
#     default = "t2.micro"
# }

# variable "instances" {
#     default = ["backend", "database", "frontend"]
# }

# variable "domain" {
#     default = "sriyaandansh.fun"
# }

# variable "zone_id" {
#     default = "Z06068673VG4ZFOMB6MYH"
# }

variable "project" {
    default = "expense"
}

variable "env" {
    default = "dev"
}

variable "environment_variables" {
    default = {
        Project = "expense"
        Environment = "dev"
    } 
}