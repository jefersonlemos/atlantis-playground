terraform {
  source = "../modules/s3-bucket"
}

dependency "account_info" {
  config_path = "../accounts.hcl"
}

inputs = {
  bucket_name    = "atlantis-bucket-app2"
}