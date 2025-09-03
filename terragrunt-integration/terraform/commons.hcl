locals {
  dev = {
    region = "us-east-1"
    aws_account_name = "dev-jeferson-aws"
    base_bucket_name = "atlantis-bucket"
    env_name = "dev"
  }
  prod = {
    region = "us-east-1"
    aws_account_name = "prod-jeferson-aws"
    base_bucket_name = "atlantis-bucket"
    env_name = "prod"    
  }  
}

terraform {
  source = "modules/random"
}