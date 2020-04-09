provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "web_server" {
	count = 1
	ami = "ami-0915e09cc7ceee3ab"
	instance_type = "t2.medium"
	key_name = "Project"
	security_groups = [ "project" ]
}
