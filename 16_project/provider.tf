terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "5.84.0"
        }
    }

    backend "s3" {
        bucket = "ansh-terraform-statefile"
        key = "ansh-dev-vpc"
        region = "us-east-1"
        dynamodb_table = "ansh-terraform-statefile"
    }
}

provider "aws" {
    region = "us-east-1"
}