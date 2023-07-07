module "service_account_github" {
  source  = "terraform-google-modules/service-accounts/google"
  version = "4.2.1"

  project_id    = var.project_id
  prefix        = var.prefix
  names         = [var.name]
  project_roles = var.roles
  description   = var.description
}
