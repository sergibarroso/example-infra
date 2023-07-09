variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  type        = string
}

variable "region" {
  description = "The region to host the cluster in"
  type        = string
}

variable "network" {
  description = "The VPC network created to host the cluster in"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  type        = string
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  type        = string
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  type        = string
}

variable "dns_zone_name" {
  description = "DNS zone name."
  type        = string
}

variable "dns_zone_domain" {
  description = "Zone domain."
  type        = string
}

variable "record_sets" {
  description = "List of DNS record objects to manage, in the standard terraform dns structure."
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
}
