resource "aws_network_acl" "subnet_nacl" {
  
  vpc_id	   	="${aws_vpc.test_vpc.id}"
  subnet_ids	=["${aws_subnet.public_subnet.id}"]

  egress {
    protocol   = "-1"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags {
    Name = "${var.nacl_name}"
  }
}