terraform {
  backend "gcs" {
    bucket = "celonis-labs-tf-backend"
    prefix = "example-infra-sa"
  }
}
