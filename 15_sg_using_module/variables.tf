variable "project_name" {
    default = "Ansh"
}

variable "environment" {
    default = "dev"
}

variable "sg_name" {
    default = "backend"
}

variable "common_tags" {
    default = {
        Project = "Ansh"
        Environment = "dev"
    }
}