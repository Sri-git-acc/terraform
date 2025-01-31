locals {
    ami_id = data.aws_ami.insta_ami.id  # expressions cannot be written in variables, but in locals can.
    instance_type = "t2.micro" #variables declared in locals cannot be override.
    proj_name = "${var.project}-${var.env}" #variables cannot be accessed in another variables, but locals can
}