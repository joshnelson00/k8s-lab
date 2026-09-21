output "networking_ids" {
  description = "Networking component IDs"
  value = {
    vpc_id              = aws_vpc.main.id
    subnet_id           = aws_subnet.main.id
    internet_gateway_id = aws_internet_gateway.main.id
    route_table_id      = aws_route_table.main.id
  }
}
