output "vpc_id" {
  value = local.vpc_id
}

output "vpc_name" {
  value = var.name
}

output "private_subnets" {
  value = local.private_subnets
}

output "public_subnets" {
  value = local.public_subnets
}
