provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "web_server" {
	count = 5
	ami = "ami-01b01bbd08f24c7a8"
	instance_type = "t2.medium"
	key_name = "Project"
	security_groups = [ "project" ]
}
