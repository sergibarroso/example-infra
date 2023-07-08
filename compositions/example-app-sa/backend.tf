terraform {
  backend "gcs" {
    bucket = "celonis-labs-tf-backend"
    prefix = "example-app-sa"
  }
}
