variable "prefix" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "retention_in_days" {
  type = number
}

variable "subnet_ids" {
  type = set(string)
}

variable "desired_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}
