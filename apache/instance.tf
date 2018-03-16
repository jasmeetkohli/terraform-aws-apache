
data "template_file" "server_config_template" {
  template = "${file(var.apache_server_config_file_location)}"
}

resource "aws_instance" "apache_server" {

	ami						        	     = "${var.apache_server_ami}"
	availability_zone   		     = "${var.apache_server_availability_zone}"
	instance_type			           = "${var.apache_server_instance_type}"

  vpc_security_group_ids	 	   = ["${aws_security_group.apache_server_SG.id}"]
  subnet_id 					         = "${var.aws_subnet_id}"
  associate_public_ip_address  = true

  user_data                    = "${data.template_file.server_config_template.rendered}"
  key_name                     = "${var.apache_server_key}"

  tags {
	   Name = "${var.apache_server_name}"
	}
}