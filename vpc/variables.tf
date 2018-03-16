variable "vpc_cidr" {
	default = "10.0.0.0/16"
}

variable "vpc_name" {
	default = "test-vpc"
}

variable "public_subnet_cidr" {
	default = "10.0.0.0/24"
}

variable "public_subnet_name" {
	default = "test-subnet"
}

variable "public_subnet_availability_zone" {
	default = "us-west-2a"
}

variable "gateway_name" {
	default = "test-gateway"
}

variable "route_table_name" {
	default = "test_router"
}

variable "nacl_name" {
	default = "subnet-nacl"
}