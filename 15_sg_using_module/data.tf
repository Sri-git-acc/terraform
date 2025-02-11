data "aws_ssm_parameter" "main" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}