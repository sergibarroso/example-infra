cluster_name           = "gke-on-vpc-cluster"
ip_range_pods_name     = "ip-range-pods"
ip_range_services_name = "ip-range-svc"
network                = "gke-network"
project_id             = "celonis-labs"
region                 = "europe-west6"
subnetwork             = "gke-subnet"
dns_zone_name          = "example-team-sbt-challenge-org"
dns_zone_domain        = "challenge.sergibarroso.me."
record_sets = [
  {
    name = "ns"
    type = "A"
    ttl  = 300
    records = [
      "127.0.0.1",
    ]
  },
  {
    name = ""
    type = "NS"
    ttl  = 300
    records = [
      "ns.challenge.sergibarroso.me.",
    ]
  },
  {
    name = "localhost"
    type = "A"
    ttl  = 300
    records = [
      "127.0.0.1",
    ]
  },
  {
    name = ""
    type = "MX"
    ttl  = 300
    records = [
      "1 localhost.",
    ]
  },
  {
    name = ""
    type = "TXT"
    ttl  = 300
    records = [
      "\"v=spf1 -all\"",
    ]
  },
]
