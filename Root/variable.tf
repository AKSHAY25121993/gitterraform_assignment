variable "module_vpc_cidr" {
    type = string
  
}

variable "module_instance_tenancy" {
    type = string
  
}
variable "module_vpc_tag" {
    type = string
}

variable "module_public_subnet_cidr" {
   type = string
}

variable "module_true_val" {
  type = string
}

variable "module_public_availability_zone" {
   type = string
}

variable "module_public_subnet_tag" {
  type = string
}

variable "module_private_subnet_cidr" {
  type = string
}

variable "module_false_val" {
  type = string
}

variable "module_private_availability_zone" {
  type = string
}

variable "module_private_subnet_tag" {
  type = string
}

variable "module_internet_gateway_tag" {
  type = string
}

variable "module_route_table_cidr" {
  type = string 
}

variable "module_route_table_tag" {
  type = string
}

variable "module_ami" {
    type = map(any)
  
}

variable "module_key_name" {
    type = string
  
}

variable "module_instance_type" {
    type = string
  
}