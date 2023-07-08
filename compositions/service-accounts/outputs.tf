output "email" {
  description = "The service account email."
  value       = module.service_account_github.service_account.email
}

output "iam_email" {
  description = "The service account IAM-format email."
  value       = module.service_account_github.iam_email
}

output "key" {
  description = "Service account key (for single use)."
  value       = module.service_account_github.key
  sensitive   = true
}
