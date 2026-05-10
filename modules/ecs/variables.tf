variable "project" {
  type    = string
  default = "myapp"
}

variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_id" {
  type = string
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "asg_min" {
  type    = number
  default = 1
}

variable "asg_max" {
  type    = number
  default = 4
}

variable "asg_desired" {
  type    = number
  default = 2
}

variable "task_cpu" {
  type    = number
  default = 256
}

variable "task_memory" {
  type    = number
  default = 512
}

variable "container_image" {
  type    = string
  default = "nginx:latest"
}

variable "app_port" {
  type    = number
  default = 80
}

variable "service_desired_count" {
  type    = number
  default = 2
}
