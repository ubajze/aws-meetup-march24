
resource "random_string" "cluster_id" {
  length  = 12
  special = false
  upper   = false
}

locals {
  cluster_id       = "cluster-${random_string.cluster_id.result}"
  primary_endpoint = "${local.cluster_id}.rds.amazonaws.com"
}
