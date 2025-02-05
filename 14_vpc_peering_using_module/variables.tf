 variable "project_name" {
    default = "Ansh"
}

variable "environment" {
    default = "dev"
}

variable "connection_name" {
    default = "inter-exchange"
}

variable tags {
    default = {
        Project = "Ansh"
        Environment = "dev"
    }
}