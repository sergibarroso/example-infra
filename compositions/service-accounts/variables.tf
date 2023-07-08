variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "prefix" {
  type        = string
  description = "Prefix applied to service account name."
  default     = ""
}

variable "name" {
  type        = string
  description = "Name of the service accounts to create."
}

variable "roles" {
  type        = list(string)
  description = "List of roles to assign to the service account."
}

variable "description" {
  type        = string
  description = "Description of the service account."
}

variable "generate_keys" {
  type        = bool
  description = "Generate keys for service accounts."
}
