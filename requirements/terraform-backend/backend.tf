terraform {
  backend "gcs" {
    bucket = "celonis-labs-tf-backend"
    prefix = "terraform-backend"
  }
}
