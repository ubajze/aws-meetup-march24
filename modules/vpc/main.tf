
resource "random_string" "vpc_id" {
  length  = 12
  special = false
  upper   = false
}

resource "random_string" "private_subnets" {
  count   = var.number_of_azs
  length  = 12
  special = false
  upper   = false
}

resource "random_string" "public_subnets" {
  count   = var.number_of_azs
  length  = 12
  special = false
  upper   = false
}

locals {
  vpc_id = "vpc-${random_string.vpc_id.result}"

  private_subnets = {
    for i in range(var.number_of_azs) : "subnet-${random_string.private_subnets[i].result}" => cidrsubnet(var.cidr, 8, i)
  }

  public_subnets = {
    for i in range(var.number_of_azs) : "subnet-${random_string.public_subnets[i].result}" => cidrsubnet(var.cidr, 8, i+8)
  }
}
