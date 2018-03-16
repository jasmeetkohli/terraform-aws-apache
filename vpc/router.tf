resource "aws_route_table" "test_route_table" {
	
	vpc_id 			= "${aws_vpc.test_vpc.id}"
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${aws_internet_gateway.test_gateway.id}"
	}
	tags {
		Name = "${var.route_table_name}"
	}
}

resource "aws_route_table_association" "test_association_subnet" {

	subnet_id 		= "${aws_subnet.public_subnet.id}"
	route_table_id	= "${aws_route_table.test_route_table.id}"
}