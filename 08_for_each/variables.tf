variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instances" {
    default = {
        database = "t3.micro"
        backend = "t2.micro"
        frontend = "t3.micro"
    }
}

variable "domain" {
    default = "sriyaandansh.fun"
}

variable "zone_id" {
    default = "Z06068673VG4ZFOMB6MYH"
}