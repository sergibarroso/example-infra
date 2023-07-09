variable "namespace" {
  description = "namespace where to deploy an application"
  type        = string
}

variable "app" {
  description = "an application to deploy"
  type        = map(any)
}

variable "repository" {
  description = "Helm repository"
  type        = string
}

variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "cluster_name" {
  description = "Name of the target cluster."
  type        = string
}

variable "cluster_region" {
  description = "Region of the target cluster."
  type        = string
}