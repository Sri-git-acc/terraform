variable "project" {
    default = "sriyaandansh"
}

variable "instances" {
    default = ["database", "backend", "frontend"]
}

variable "instance_type" {
    default = {
        dev = "t2.micro"
        prod = "t3.micro"
    }
}