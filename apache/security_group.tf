resource "aws_security_group" "apache_server_SG" {
	
	name 		= "${var.apache_server_SG_name}"
	vpc_id 		= "${var.aws_vpc_id}"
	
	tags {
		Name = "${var.apache_server_SG_name}"
	}
}

resource "aws_security_group_rule" "ssh" {
	
	security_group_id = "${aws_security_group.apache_server_SG.id}"
	type 			  = "ingress"
	from_port 		  = 22
	to_port 		  = 22
	protocol 		  = "tcp"
	cidr_blocks 	  = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "http" {
	
	security_group_id = "${aws_security_group.apache_server_SG.id}"
	type 			  = "ingress"
	from_port 		  = 80
	to_port 		  = 80
	protocol 		  = "tcp"
	cidr_blocks 	  = ["0.0.0.0/0"]
}


resource "aws_security_group_rule" "outbound" {
	
	security_group_id = "${aws_security_group.apache_server_SG.id}"
	type 			  = "egress"
	from_port 		  = 0
	to_port 		  = 0
	protocol 		  = "-1"
	cidr_blocks 	  = ["0.0.0.0/0"]
}