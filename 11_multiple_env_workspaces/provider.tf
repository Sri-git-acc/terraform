terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "5.84.0"
        }
    }
    # backend "s3" {
    #     bucket = "sriyaandansh-statefile-bucket"
    #     key = "workspace-statefile-lock"
    #     region = "us-east-1"
    #     dynamodb_table = "sriyaandansh_insta_statefile_lock"
    # }
}

provider "aws" {
    region = "us-east-1"
}