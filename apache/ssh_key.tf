resource "aws_key_pair" "apache_key" {
  key_name 		= "${var.apache_server_key}" 
  public_key 	= "${file(var.user_ssh_key_pub)}"
}
