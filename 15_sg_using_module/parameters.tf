resource "aws_ssm_parameter" "main" {
  name  = "/${var.project_name}/${var.environment}/${var.sg_name}"
  type  = "String"
  value = module.sg.sg_id
}