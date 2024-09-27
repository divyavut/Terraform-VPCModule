# Terraform AWS VPC module customised
This module is going to create the following resources. For High Availability we are going get first 2 AZ's

* VPC 
* InternetGateway associated with VPC 
* Two sublic subnets
* Two private Subnets
* Two database Subnets
* Elastic Ip 
* one NAt gateway in public subnet
* Public Route table
* Private Route Table
* database Route Table
* Add routes to Route Table 
* Databaes subnet group
* Routetable association with subnets
* Peering with default VPC  if required 
* Added routes(peering) to Acceptor and requestor rout table


# Inputs 

* project_name (Mandatory): User must supply their project name.
* environment(Mandatory): User must supply their environment name.
* vpc_cidr(Mandatory): User must supply their vpc_cidr.
* enable_dns_hostnames(Optional): default to true
* common_tags (Optional):  Default is Empty.User can supply tags in map(string) format
* vpc_tags(Optional): Default is Empty.User can supply tags in map(string) format
* public_subnet_cidrs (Mandatory): user must supply only 2 valid cidrs in list(string) format
* private_subnet_cidrs (Mandatory): user must supply only 2 valid cidrs in list(string) format
* database_subnet_cidrs (Mandatory): user must supply only 2 valid cidrs in list(string) format
* public_subnet_tags(Optional): Default is Empty.User can supply tags in map(string) format
* private_subnet_tags(Optional): Default is Empty.User can supply tags in map(string) format
* private_subnet_tags(Optional): Default is Empty.User can supply tags in map(string) format
* db_subnet_group_tags(Optional): Default is Empty.User can supply tags in map(string) format
* nat_gateway_tags(Optional):  Default is Empty.User can supply tags in map(string) format
* public_route_table_tags(Optional): Default is Empty.User can supply tags in map(string) format
* private_route_table_tags(Optional): Default is Empty.User can supply tags in map(string) format
* database_route_table_tags(Optional): Default is Empty.User can supply tags in map(string) format
* ispeering_required(Optional): default to false, User can override teh value of the variable.
* vpc_peering_tags(Optional): Default is Empty.User can supply tags in map(string) format

### Outputs 
vpc_id: VPC_ID created 
public_subnet_ids: list of 2 public subnet ids created
private_subnet_ids: list of 2 private subnet ids created
database_subnet_ids: list of 2 private subnet ids created