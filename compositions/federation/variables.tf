variable "project_id" {
  type        = string
  description = "The ID of the project"
}

variable "pool_id" {
  type        = string
  description = "Workload Identity Pool ID"

  validation {
    condition     = substr(var.pool_id, 0, 4) != "gcp-" && length(regex("([a-z0-9-]{4,32})", var.pool_id)) == 1
    error_message = "The pool_id value should be 4-32 characters, and may contain the characters [a-z0-9-]."
  }
}

variable "provider_id" {
  type        = string
  description = "Workload Identity Pool Provider ID"

  validation {
    condition     = substr(var.provider_id, 0, 4) != "gcp-" && length(regex("([a-z0-9-]{4,32})", var.provider_id)) == 1
    error_message = "The provider_id value should be 4-32 characters, and may contain the characters [a-z0-9-]."
  }
}

variable "issuer_uri" {
  type        = string
  description = "Workload Identity Pool Provider issuer URL"
}

variable "service_account_name" {
  type        = string
  description = "The name or email address of the service account to allow on this provider."
}

variable "github_repository" {
  type        = string
  description = "The name of the GitHub repository to allow using this provider."
}
