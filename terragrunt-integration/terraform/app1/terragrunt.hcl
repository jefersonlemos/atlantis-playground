terraform {
  source = "../modules/s3-bucket"
}

variable  "environment" {
  type = string
  default = ""
}

locals {
  env_name_hcl = read_terragrunt_config(find_in_parent_folders("commons.hcl"))
  env_name = "local.${env_name_hcl}.locals.${var.environment}.env_name"
}

dependency "commons" {
  config_path = find_in_parent_folders("commons.hcl")
  mock_outputs = {
    base_bucket_name = "base-name"
  }
}

inputs = {
  bucket_name   = "app1-new9-${local.env_name}-${dependency.commons.outputs.base_bucket_name}"
}