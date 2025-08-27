terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider {
  aws = {
    region = "us-east-1"
  }
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "private"
}


