provider "aws" {
region      = "${var.region}"
}
resource "aws_instance" "webzada" {
  ami = "${var.ami}"
  instance_type = "${var.type}"
  }
  
data "aws_subnet" "selected" {
  id = "${var.subnet_id}"
}
resource "aws_security_group" "Webzada" {
  name = "Teste security"
  description = "Testando"
  vpc_id = "${var.vpc_id}"
}
resource "aws_security_group" "subnet" {
  vpc_id = "${data.aws_subnet.selected.vpc_id}"

  ingress {
    cidr_blocks = ["${var.i_cidr_block}"]
    from_port   = "${var.i_from_port}"
    to_port     = "${var.i_to_port}"
    protocol    = "${var.i_protocol}"
  }
  egress {
    from_port = "${var.e_from_port}"
    to_port = "${var.e_to_port}"
    protocol = "${var.e_protocol}"
    cidr_blocks = ["${var.e_cidr_block}"]
  }

}


