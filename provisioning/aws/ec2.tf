variable "region" {
    type = "string"
    default = "ap-south-1"
}

variable "instance_type" {
type = "string"
default = "t2.micro"
}

variable "ami" {
type = "string"
default = "ami-0ad42f4f66f6c1cc9"
}

provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "example" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
}
