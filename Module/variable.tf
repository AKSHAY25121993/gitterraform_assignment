variable "vpc_cidr" {
    type = string
}

variable "instance_tenancy" {
    type = string
}

variable "public_subnet_cidr" {
    type = string
}

variable "private_subnet_cidr" {
  type= string
}

variable "public_availability_zone" {
  type = string
}

variable "private_availability_zone" {
  type = string
}

variable "route_table_cidr" {
  type = string
}

variable "vpc_tag" {
    type = string
}

variable "public_subnet_tag" {
  type = string
}

variable "private_subnet_tag" {
    type = string
}

variable "internet_gateway_tag" {
  type = string
}

variable "route_table_tag" {
  type = string
}



variable "true_val" {
  type = string
}

variable "false_val" {
  type = string
}

variable "ami" {
  type = list
  
}

variable "instance_type" {
  type = string
  
}

variable "key_name" {
  type = string
  
}

variable "instance_tags"{
  type = map
}
  
