
################# VPV ####################

resource "aws_vpc" "VPCITMIaCVSCode" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "VPCITMIaCVSCode"
  }
}

 
############# Subnets #############
 
resource "aws_subnet" "SUBNET_ITMIaC_1_VSCode" {
  vpc_id = aws_vpc.VPCITMIaCVSCode.id
  cidr_block = "${var.subnet_1_cidr}"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  depends_on = [
    aws_vpc.VPCITMIaCVSCode
  ]
}
 
resource "aws_subnet" "SUBNET_ITMIaC_2_VSCode" {
  vpc_id = aws_vpc.VPCITMIaCVSCode.id
  cidr_block = "${var.subnet_2_cidr}"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true
  depends_on = [
    aws_vpc.VPCITMIaCVSCode
  ]
}
 
############# Internet Gateway #############
 
resource "aws_internet_gateway" "IG_ITMIac_VSCode" {
  vpc_id = aws_vpc.VPCITMIaCVSCode.id
  depends_on = [
    aws_vpc.VPCITMIaCVSCode
  ]
}
 
############# Route Table #############
 
resource "aws_route_table" "RT_ITMIaC_VSCode" {
  vpc_id = aws_vpc.VPCITMIaCVSCode.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IG_ITMIac_VSCode.id
  }
depends_on = [aws_internet_gateway.IG_ITMIac_VSCode]
}
 
resource "aws_main_route_table_association" "RT_AssociationJoomla" {
  route_table_id = aws_route_table.RT_ITMIaC_VSCode.id
  vpc_id         = aws_vpc.VPCITMIaCVSCode.id
}
