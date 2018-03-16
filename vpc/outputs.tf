output "aws_subnet_id" {
	value = "${aws_subnet.public_subnet.id}"
}

output "aws_vpc_id" {
	value = "${aws_vpc.test_vpc.id}"
}