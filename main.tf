terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "tf-test-anthony"
}


# resource "aws_dynamodb_table" "terraform_locks" {
#   name = "terraform-state-locking"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key = "LockID" #need this for it to work
#   attribute {
#     name = "LockID"
#     type = "S"
#   } 
# }
