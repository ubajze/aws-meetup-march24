variable "name" {
  description = "VPC name"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR (/16)"
  type        = string
}

variable "number_of_azs" {
  description = "Number of availability zones"
  type        = number
}