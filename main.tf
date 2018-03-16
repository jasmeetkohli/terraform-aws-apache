provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}


module "vpc" {
	source 	= "./vpc/"

	vpc_cidr = "${var.vpc_cidr}"
	public_subnet_cidr = "${var.public_subnet_cidr}"
}

module "apache" {
	source 	= "./apache/"
	apache_server_key  = "${var.apache_server_key}"
	aws_subnet_id = "${module.vpc.aws_subnet_id}"
	aws_vpc_id	=	"${module.vpc.aws_vpc_id}"
}