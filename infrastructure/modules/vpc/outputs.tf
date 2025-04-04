output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.this.id
}

output "public_subnets_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnets_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}
