project_id     = "celonis-labs"
cluster_name   = "gke-on-vpc-cluster"
cluster_region = "europe-west6"
namespace      = "cert-manager"
repository     = "https://charts.jetstack.io"
app = {
  name             = "cert-manager"
  chart            = "cert-manager"
  version          = "1.12.2"
  force_update     = true
  wait             = true
  recreate_pods    = true
  create_namespace = true
  deploy           = 1
}
