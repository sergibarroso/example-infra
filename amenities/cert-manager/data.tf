data "google_client_config" "current" {}

data "google_container_cluster" "this" {
  name     = var.cluster_name
  location = var.cluster_region
  project  = var.project_id
}
