variable "cidr_block" {
    type = string
}
variable "environment" {
    type = string
}
variable "project_name" {
    type = string
}
variable "common_tags" {
    type = map 
    default = {}
}
variable "vpc_tags" {
    type = map 
    default = {}
}
variable "enable_dns_hostnames" {
  type        = bool
  default = true
}

variable "public_subnet_tags" {
    type = map 
    default = {}
}
variable "public_subnet_cidrs" {
    type = list(string)
    validation {
        condition     = length(var.public_subnet_cidrs) == 2
        error_message = "please provide two valid subnet CIDRS"
    }
}

variable "private_subnet_cidrs" {
    type = list(string)
    validation {
       condition = length(var.private_subnet_cidrs) == 2
       error_message = "please provide two valid subnet CIRDS"
    }
}
variable "private_subnet_tags" {
    type = map 
    default = {}
}
variable "database_subnet_cidrs" {
   type = list(string)
    validation {
       condition = length(var.database_subnet_cidrs) == 2
       error_message = "please provide two valid subnet CIRDS"
    }
}

variable "database_subnet_tags" {
    type = map 
    default = {}
}
variable "db_subnet_group_tags" {
    type = map
    default = {}
}
variable "nat_gateway_tags" {
    type = map 
    default = {}
}
variable "public_route_table_tags" {
    type = map
    default = {}
}
variable "private_route_table_tags" {
    type = map
    default = {}
}
variable "database_route_table_tags" {
    type = map
    default = {}
}
variable "ispeering_required" {
    type = bool
    default = false
}
variable "vpc_peering_tags" {
    type = map
    default = {}
}

