output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets_ids" {
  value = values(aws_subnet.subnet)[*].id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.ig.id
}

output "public_route_table_id" {
  value = aws_route_table.route_table.id
}