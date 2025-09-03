terraform {
  source = "../modules/s3-bucket"
}

include "aws_config" {
  path   = "../accounts1.hcl"
  expose = true
}

inputs = {
  bucket_name    = "app1-${include.aws_config.locals.bucket_name}"
}