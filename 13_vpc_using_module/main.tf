module "vpc" {
    source = "../../terraform-modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
    private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
    database_subnet_cidr_blocks = var.database_subnet_cidr_blocks
    is_peering_required = true
}
