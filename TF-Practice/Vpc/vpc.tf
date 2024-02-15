module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.2.0"


 for_each = var.vpcs
  

  name                = each.value["vpc-name"]
  cidr                = each.value["vpc-cidr"]   
  azs                 = each.value["vpc-azs"]
  private_subnets     = each.value["vpc-pvt-sub"]
  public_subnets      = each.value["vpc-pub-sub"]
  

  # Database Subnets
  #create_database_subnet_group = true
  #create_database_subnet_route_table= true
  #database_subnets    = var.vpc-db

  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true

  # NAT Gateways - Outbound Communication
  enable_nat_gateway = each.value["enable_nat"]
  single_nat_gateway = each.value["single_nat"]

  # VPC DNS Parameters
  enable_dns_hostnames = each.value["dns_hostnames"]
  enable_dns_support = each.value["dns_support"]
  map_public_ip_on_launch = each.value["public_ip"]
  

  public_subnet_tags = {
    Type = var.public_subnet_tags["Name"]
  }

  private_subnet_tags = {
    Type = var.private_subnet_tags["Name"]
  }

  #database_subnet_tags = {
   # Type = var.database_subnet_tags["Name"]
  #}
  

 /* tags = {
    Owner = "krishna"
    Environment = "test"
  }*/

  vpc_tags = {
    Name = "Krishna-VPC"
  }
}