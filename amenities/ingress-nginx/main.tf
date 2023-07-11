module "helm" {
  source  = "terraform-module/release/helm"
  version = "2.8.1"

  namespace  = var.namespace
  repository = var.repository
  # values     = [file("values.yaml")]
  app = var.app
}
