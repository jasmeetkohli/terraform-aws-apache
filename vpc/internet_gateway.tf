resource "aws_internet_gateway" "test_gateway" {
	
	vpc_id = "${aws_vpc.test_vpc.id}"

	tags {
		Name = "${var.gateway_name}"
	}
}
