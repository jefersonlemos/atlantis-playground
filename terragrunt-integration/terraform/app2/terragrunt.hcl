terraform {
  source = "../modules/s3-bucket"
}

dependency "aws_config" {
  config_path   = "../accounts2.hcl"
}


# inputs = {
#   bucket_name    = "app2-${dependency.aws_config.mock_outputs.bucket_name}"
# }