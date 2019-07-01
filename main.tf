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
resource "aws_security_group" "subnet" {
  vpc_id = "${data.aws_subnet.selected.vpc_id}"

  ingress {
    cidr_blocks = ["${data.aws_subnet.selected.cidr_block}"]
    from_port   = "${var.i_from_port}"
    to_port     = "${var.i_to_port}"
    protocol    = "${var.i_protocol}"
  }
  
}

