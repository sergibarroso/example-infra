terraform {
  required_version = ">= 1.0"

  required_providers {
    helm = "~> 2.0"
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "helm" {
  kubernetes {
    host                   = "https://${data.google_container_cluster.this.endpoint}"
    token                  = data.google_client_config.current.access_token
    cluster_ca_certificate = base64decode(data.google_container_cluster.this.master_auth[0].cluster_ca_certificate)
  }
}

provider "google" {}
