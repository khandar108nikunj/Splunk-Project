provider "aws" {
	region = "us-east-1"
}

data "template_file" "userdata_client" {
  template = "${file("templates/userdata_client.tpl")}"
}

resource "aws_instance" "web_server" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="Cluster_master"
  }

}

resource "aws_instance" "web_server" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="Indexer-1"
  }
}

resource "aws_instance" "web_server" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="Indexer-2"
  }

}

resource "aws_instance" "web_server" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="SH"
  }

}

resource "aws_instance" "web_server" {
	ami = "ami-0affd4508a5d2481b"
	instance_type = "t2.micro"
	key_name = "Project"
	user_data = "${data.template_file.userdata_client.rendered}"
	security_groups = [ "project" ]
	tags = {
  	Name="UF"
  }

}