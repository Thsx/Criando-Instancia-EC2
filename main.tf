provider "aws" {
region      = "${var.region}"
}
resource "aws_instance" "webzada" {
  ami = "${var.ami}"
  instance_type = "${var.type}"
  }
