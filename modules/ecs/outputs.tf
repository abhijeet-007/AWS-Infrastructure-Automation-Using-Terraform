output "cluster_id" {
  value = aws_ecs_cluster.this.id
}

output "cluster_name" {
  value = aws_ecs_cluster.this.name
}

output "service_name" {
  value = aws_ecs_service.this.name
}

output "ecs_instance_sg_id" {
  value = aws_security_group.ecs_instances.id
}

output "asg_name" {
  value = aws_autoscaling_group.ecs.name
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.this.arn
}
