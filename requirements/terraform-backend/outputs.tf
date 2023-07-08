output "name" {
  description = "Bucket name (for single use)."
  value       = module.terraform-backend.name
}

output "url" {
  description = "Bucket URL (for single use)."
  value       = module.terraform-backend.url
}
