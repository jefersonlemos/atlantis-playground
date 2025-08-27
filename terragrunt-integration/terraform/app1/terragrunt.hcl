terraform {
  source = "../modules/s3-bucket"
}

include "aws_config" {
  path   = "${get_terragrunt_dir()}/../accounts.hcl"
  expose = true
}


inputs = {
  bucket_name    = "atlantis-bucket"
}