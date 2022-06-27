module_ami = {
    "0"={
        ami = ["ami-0c66c8e259df7ec04","ami-0d4568822d03d36f9"]
        tags = {
            
            name = "akshay_instance"
            owner = "akshay.arora@cloudeq.com"
        }
    }
}
    
       

module_vpc_cidr = "10.0.0.0/16"

module_instance_tenancy = "default"

module_public_subnet_cidr = "10.0.1.0/24"

module_private_subnet_cidr = "10.0.3.0/24"

module_route_table_cidr = "0.0.0.0/0"

module_public_availability_zone = "ap-northeast-3a"

module_private_availability_zone = "ap-northeast-3b"

module_vpc_tag = "AkshayVpc"

module_public_subnet_tag = "Akshay_public_subnet"

module_private_subnet_tag = "Akshay_private_subnet"

module_internet_gateway_tag = "Akshay_ING"

module_route_table_tag = "Akshay_RT"

module_key_name = "akshayKey"

module_true_val = "true"

module_false_val = "false"

module_instance_type = "t2.micro"

