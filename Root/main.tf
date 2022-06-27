module "instance_module" {
    source = "../Root"
    vpc_cidr = var.module_vpc_cidr
    instance_tenancy = var.module_instance_tenancy
    vpc_tag = var.module_vpc_tag
    public_subnet_cidr = var.module_public_subnet_cidr
    true_val = var.module_true_val
    public_availability_zone = var.module_public_availability_zone
    public_subnet_tag = var.module_public_subnet_tag
    private_subnet_cidr = var.module_private_subnet_cidr
    false_val = var.module_false_val
    private_availability_zone = var.module_private_availability_zone
    private_subnet_tag = var.module_private_subnet_tag
    internet_gateway_tag = var.module_internet_gateway_tag
    route_table_cidr = var.module_route_table_cidr 
    route_table_tag = var.module_route_table_tag
    for_each = var.module_ami
    ami = each.value.ami
    instance_tags = each.value.tags
    key_name = var.module_key_name
    instance_type = var.module_instance_type


  
}