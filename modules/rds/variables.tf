variable "name" {
  description = "RDS cluster name"
  type        = string
}

variable "subnets" {
  description = "Subnets to RDS cluster"
  type        = map(string)
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "m5.xlarge"
}

