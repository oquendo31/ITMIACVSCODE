 # Region
variable "aws_region" {
  default = "us-east-1"
}
 
# Profile
variable "aws_profile" {
    default = "default"
}

variable "shared_credentials_file" {
  default = "C:/Users/JF/.aws/credentials"
}

# VPC CIDR Block
variable "vpc_cidr" {
    description  = "CIDR block para la VPC"
    default = "172.30.0.0/16"
}

# Subnet 1 CIDR Block
variable "subnet_1_cidr" {
    description  = "CIDR block para la VPC"
    default = "172.30.0.0/24"
}

# Subnet 2 CIDR Block
variable "subnet_2_cidr" {
    description  = "CIDR block para la VPC"
    default = "172.30.1.0/24"
}




