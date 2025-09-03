dependency "account_info" {
  config_path = "modules/s3-bucket"
  mock_outputs = {
    aws_account_name = "jeferson-aws"
    bucket_name      = "atlantis-bucket"
  }
}
