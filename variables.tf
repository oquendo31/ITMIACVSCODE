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

# VPC
variable "vpc_cidr" {
    description  = "CIDR block para la VPC"
    default = "172.30.0.0/16"
}



