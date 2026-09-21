output "security_ids" {
  description = "Security component IDs"
  value = {
    security_group_id = aws_security_group.allow_tls.id
  }
}
