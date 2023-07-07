module "federation-github" {
  source  = "mscribellito/workload-identity-federation/google"
  version = "0.1.0"

  project_id  = var.project_id
  pool_id     = var.pool_id
  provider_id = var.provider_id
  issuer_uri  = var.issuer_uri
  service_accounts = [
    {
      name           = data.google_service_account.sa.name
      attribute      = join("/", ["attribute.repository", var.github_repository])
      all_identities = true
    }
  ]
  attribute_mapping = {
    "google.subject"       = "assertion.sub"
    "attribute.actor"      = "assertion.actor"
    "attribute.aud"        = "assertion.aud"
    "attribute.repository" = "assertion.repository"
  }
}
