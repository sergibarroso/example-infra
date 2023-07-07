locals {
  country_short_name = split("-", var.region)[0] == "europe" ? "EU" : "US"
  region_short_name  = upper(split("-", var.region)[1])
}

data "google_client_config" "current" {}

data "google_service_account" "object_viewer" {
  account_id = "object-viewer"
}
