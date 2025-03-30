
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