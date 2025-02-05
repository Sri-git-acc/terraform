module "vpc_peering" {
    source = "../../terraform-modules/vpc-peering"
    peer_vpc_id = local.peer_vpc_id
    project_name = var.project_name
    environment = var.environment
    connection_name = var.connection_name

    tags = var.tags
}
