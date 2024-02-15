vpcs = {
    vpc-1 = {
vpc-name              = "Terraform-VPC"
    vpc-cidr              = "10.0.0.0/16"
    vpc-azs               = ["us-east-1a", "us-east-1b"]
    vpc-pvt-sub           = ["10.0.1.0/24", "10.0.2.0/24"]
    vpc-pub-sub           = ["10.0.101.0/24", "10.0.102.0/24"]
    enable_nat            = true
    single_nat            = true
    dns_hostnames         = true 
    dns_support           = true
    public_ip             = true
    }
}