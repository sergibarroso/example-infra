terraform {
  backend "gcs" {
    bucket = "celonis-labs-tf-backend"
    prefix = "ingress-nginx"
  }
}
