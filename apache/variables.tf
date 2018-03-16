variable "apache_server_key" {}
variable "aws_subnet_id" {}
variable "aws_vpc_id" {}

variable "apache_server_ami" {
	default = "ami-79873901"	
}

variable "apache_server_availability_zone" {
	default = "us-west-2a"
}

variable "apache_server_instance_type" {
	default = "t2.nano"
}

variable "apache_server_name" {
	default = "test-apache"
}

variable "apache_server_SG_name" {
	default = "apache-SG"
}

variable "apache_server_config_file_location" {
	default = "./apache/data/server_config.sh"
}

variable "user_ssh_key_pub" {
	default = "~/.ssh/id_rsa.pub"
}

