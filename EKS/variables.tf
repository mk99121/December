variable "vpc-name" {
  type = string
  default = "eks-vpc"
}
variable "vpc-cidr" {
  type = string
  default = "10.0.0.0/16"
}
variable "vpc-azs" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}
variable "vpc-pvt"{
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "vpc-pub" {
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}
variable "vpc-db" {
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
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
variable "database_subnet_tags" {
  type = map(string)
  default = {
    Name = "database_subnet_tags-subnets"
  }
}
  
/*variable "vpc_tags" {
    type = map(string)
    default = {
      "Name" = "vpc-demo"
    }
}*/