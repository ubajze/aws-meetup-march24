variable "name" {
  description = "EKS name"
  type        = string
}

variable "subnets" {
  description = "Subnets to deploy node groups"
  type        = map(string)
}
