resource "aws_instance" "insta" {
    ami = local.ami_id
    instance_type = local.instance_type

    tags = {
        Name = "insta"
    }
}

resource "aws_s3_bucket" "insta_bucket" {
    bucket = "sriyaandansh-statefile-bucket"
}

resource "aws_dynamodb_table" "db_table" {
    name = "sriyaandansh_insta_statefile_lock"
    billing_mode = "PAY_PER_REQUEST"

    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}

