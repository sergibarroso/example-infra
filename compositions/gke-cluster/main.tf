module "gcp-network" {
  source  = "terraform-google-modules/network/google"
  version = "7.1.0"

  project_id   = var.project_id
  network_name = var.network

  subnets = [
    {
      subnet_name   = var.subnetwork
      subnet_ip     = "10.0.0.0/17"
      subnet_region = var.region
    },
  ]

  secondary_ranges = {
    (var.subnetwork) = [
      {
        range_name    = var.ip_range_pods_name
        ip_cidr_range = "192.168.0.0/18"
      },
      {
        range_name    = var.ip_range_services_name
        ip_cidr_range = "192.168.64.0/18"
      },
    ]
  }
}

module "gke" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "27.0.0"

  project_id             = var.project_id
  name                   = var.cluster_name
  regional               = true
  region                 = var.region
  network                = module.gcp-network.network_name
  subnetwork             = module.gcp-network.subnets_names[0]
  ip_range_pods          = var.ip_range_pods_name
  ip_range_services      = var.ip_range_services_name
  create_service_account = true
}

module "dns-public-zone" {
  source  = "terraform-google-modules/cloud-dns/google"
  version = "5.0.0"

  project_id                         = var.project_id
  type                               = "public"
  name                               = var.dns_zone_name
  domain                             = var.dns_zone_domain
  private_visibility_config_networks = [var.network_self_links]
  enable_logging                     = true
  recordsets                         = var.record_sets
}
