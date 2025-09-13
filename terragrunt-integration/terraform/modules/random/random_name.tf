
resource "random_string" "base_bucket_name" {
  length  = 4
  upper   = false
  numeric = false
  special = false
}

output "base_bucket_name" {
  value = random_string.base_bucket_name.result
}