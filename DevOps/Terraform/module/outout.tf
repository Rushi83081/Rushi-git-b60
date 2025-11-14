output "subnet_id" {
  value = aws_subnet.sub.id
}

output "security_group_id" {
  value = aws_security_group.SG.id
}
