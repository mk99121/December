variable "vpcs" {
  type = map(
    object(
    {
    vpc-name              = string
    vpc-cidr              = string
    vpc-azs               = list(string)
    vpc-pvt-sub           = list(string)
    vpc-pub-sub           = list(string)
    enable_nat            = bool
    single_nat            = bool
    dns_hostnames         = bool 
    dns_support           = bool
    public_ip             = bool

  }
 )
)
}

variable "public_subnet_tags" {
  type = map(string)
  default = {
    Name = "public-subnets"
  }
}

variable "private_subnet_tags" {
  type = map(string)
  default = {
    Name = "private-subnets"
  }
}