terraform {
  required_version = ">= 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  project              = var.project
  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "ecs" {
  source = "./modules/ecs"

  project               = var.project
  aws_region            = var.aws_region
  vpc_id                = module.vpc.vpc_id
  vpc_cidr              = var.vpc_cidr
  private_subnet_ids    = module.vpc.private_subnet_ids
  instance_type         = var.ecs_instance_type
  asg_min               = var.asg_min
  asg_max               = var.asg_max
  asg_desired           = var.asg_desired
  task_cpu              = var.task_cpu
  task_memory           = var.task_memory
  container_image       = var.container_image
  app_port              = var.app_port
  service_desired_count = var.service_desired_count
}
