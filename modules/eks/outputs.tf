output "cluster_endpoint" {
  value = "https://${var.name}.aws/"
}

output "worker_node_security_group_id" {
  value = local.security_group_id
}
