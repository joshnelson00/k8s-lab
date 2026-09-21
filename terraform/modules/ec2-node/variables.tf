variable "network" {
  description = "Networking component IDs"
  type = object({
    vpc_id              = string
    subnet_id           = string
    internet_gateway_id = string
    route_table_id      = string
  })
}

variable "security" {
  description = "Security component IDs"
  type = object({
    security_group_id = string
  })
}

