project_id     = "celonis-labs"
cluster_name   = "gke-on-vpc-cluster"
cluster_region = "europe-west6"
namespace      = "ingress-nginx"
repository     = "https://kubernetes.github.io/ingress-nginx"
app = {
  name             = "ingress-nginx"
  chart            = "ingress-nginx"
  version          = "4.7.1"
  force_update     = true
  wait             = true
  recreate_pods    = true
  create_namespace = true
  deploy           = 1
}
