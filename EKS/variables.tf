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
##############################################
variable "cluster-name" {
  type = string
  default = "EKS_TF_Cluster"
}
variable "cluster-version" {
  type = string
  default = "1.25"
}
variable "node-group" {
  type = string
  default = "eks-cluster-nodegroup"
  
}
variable "ami_type" {
  type = string
  default = "AL2_x86_64"
}
variable "disk_size" {
  type = string
  default = "20"
}
variable "instance_type" {
  type = list(string)
  default = ["t2.micro"]
}
variable "capacity_type" {
  type = string
  default = "ON_DEMAND"
}
###############################
variable "my_ip" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}
variable "workstation-external-cidr" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}