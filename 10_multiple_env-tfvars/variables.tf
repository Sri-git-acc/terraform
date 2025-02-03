variable "environment" {}
variable "project" {
    default = "sriyaandansh"
}
variable "instances" {
    default = ["database", "backend", "frontend"]
}

variable "zone_id" {
    default = "Z06068673VG4ZFOMB6MYH"
}

variable "domain" {
    default = "sriyaandansh.fun"
}