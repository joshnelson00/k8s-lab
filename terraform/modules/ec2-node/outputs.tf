output "instance_ids" {
  description = "Instance IDs"
  value       = aws_instance.k8s-node[*].id
}
