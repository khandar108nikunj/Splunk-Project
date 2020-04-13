provider "aws" {
	region = "us-east-1"
}

data "template_file" "userdata_client" {
  template = "${file("templates/userdata_client.tpl")}"
}

resource "aws_instance" "c0m1" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="C0m1"
  }

}

resource "aws_instance" "i-1" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="Idx-1"
  }
}

resource "aws_instance" "i-2" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="Idx-2"
  }

}

resource "aws_instance" "sh" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="SH"
  }

}

resource "aws_instance" "uf" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="UF"
  }

}
