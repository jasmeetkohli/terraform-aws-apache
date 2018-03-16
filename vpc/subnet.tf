resource aws_subnet "public_subnet" {
	
	vpc_id 					= "${aws_vpc.test_vpc.id}"
	cidr_block				= "${var.public_subnet_cidr}"
	availability_zone		= "${var.public_subnet_availability_zone}"

	tags {
		Name = "${var.public_subnet_name}"
	}
}