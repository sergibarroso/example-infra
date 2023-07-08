output "name" {
  description = "Bucket name (for single use)."
  value       = module.terraform-backend.name
}

output "url" {
  description = "Bucket URL (for single use)."
  value       = module.terraform-backend.url
}

output "backend_file" {
  description = "To use this backend, create a file `backend.tf` with the following content in the composition."
  value       = <<-EOF
    terraform {
      backend "gcs" {
        bucket = "${module.terraform-backend.name}"
        prefix = "NAME_OF_THE_COMPOSITION"
      }
    }
  EOF
}
