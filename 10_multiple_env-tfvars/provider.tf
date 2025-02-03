# terraform {
#     required_providers {
#         aws = {
#             source  = "hashicorp/aws"
#             version = "5.84.0"
#         }
#     }
# }

# backend "s3" { to lock the state file

# }

provider "aws" {
    region = "us-east-1"
}