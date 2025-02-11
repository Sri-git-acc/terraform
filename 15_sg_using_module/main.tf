module "sg" {
    source = "../../terraform-modules/sg"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_name
    vpc_id = data.aws_ssm_parameter.main.value
    common_tags = var.common_tags
}