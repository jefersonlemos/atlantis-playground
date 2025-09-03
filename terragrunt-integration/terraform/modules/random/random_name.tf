
resource "random_string" "base_bucket_name" {
  length  = 4
  lower   = true
  numeric = false
  special = false
}

output "base_bucket_name" {
  value = random_string.base_bucket_name.result
}