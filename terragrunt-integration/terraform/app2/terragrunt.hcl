terraform {
  source = "../modules/s3-bucket"
}

variable  "environment" {
  type = string
  default = ""
}

locals {
  env = var.environment
  env_name_hcl = read_terragrunt_config(find_in_parent_folders("commons.hcl"))
  env_name = "${local.env_name_hcl}.locals.${local.env}.env_name"
}

dependency "commons" {
  config_path = find_in_parent_folders("commons.hcl")
  mock_outputs = {
    base_bucket_name = "base-name"
  }
}

inputs = {
  bucket_name   = "app2-new-2-${local.env_name}-${dependency.commons.outputs.base_bucket_name}"
}