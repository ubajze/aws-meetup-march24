
resource "random_string" "sg_id" {
  length  = 12
  special = false
  upper   = false
}

locals {
  security_group_id = "sg-${random_string.sg_id.result}"
}
