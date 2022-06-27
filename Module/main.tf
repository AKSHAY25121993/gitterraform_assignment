# Creating VPC,name, CIDR and Tags
resource "aws_vpc" "main" {
cidr_block           = var.vpc_cidr
instance_tenancy     = var.instance_tenancy
tags = {
Name = var.vpc_tag
}
}
# Creating Public Subnets in VPC
resource "aws_subnet" "public" {
vpc_id                  = aws_vpc.main.id
cidr_block              = var.public_subnet_cidr
map_public_ip_on_launch = var.true_val
availability_zone       = var.public_availability_zone
tags = {
Name = var.public_subnet_tag
}
}
# Creating Private Subnets in VPC
resource "aws_subnet" "private" {
vpc_id                  = aws_vpc.main.id
cidr_block              = var.private_subnet_cidr
map_public_ip_on_launch = var.false_val
availability_zone       = var.private_availability_zone
tags = {
Name = var.private_subnet_tag
}
}
# Creating Internet Gateway in AWS VPC
resource "aws_internet_gateway" "internet-gw" {
vpc_id = aws_vpc.main.id
tags = {
Name = var.internet_gateway_tag
}
}
# Creating Route Tables for Internet gateway
resource "aws_route_table" "public_route_table" {
vpc_id = aws_vpc.main.id
route {
cidr_block = var.route_table_cidr
gateway_id = aws_internet_gateway.internet-gw.id
}
tags = {
Name = var.route_table_tag
}
}
# Creating Route Associations public subnets
resource "aws_route_table_association" "route_table" {
subnet_id      = aws_subnet.public.id
route_table_id = aws_route_table.public_route_table.id
}




resource "aws_instance" "instance" {
  for_each = toset(var.ami)
  ami = each.value
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = aws_subnet.public.id

  tags = var.instance_tags
  
}