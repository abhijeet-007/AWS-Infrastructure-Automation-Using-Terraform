output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}

output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}

output "ecs_service_name" {
  value = module.ecs.service_name
}

output "ecs_asg_name" {
  value = module.ecs.asg_name
}

output "ecs_instance_sg_id" {
  value = module.ecs.ecs_instance_sg_id
}

output "task_definition_arn" {
  value = module.ecs.task_definition_arn
}
