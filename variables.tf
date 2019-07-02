variable "region" {
    default = "sa-east-1"
    description = "Main region"
}

variable  "ami"{
    default = "ami-09f4cd7c0b533b081"
}

variable "type"{
    default ="t2.micro" 
}

variable "aws_security_group" {
   default = "sg-d4bb3baf"
}
variable "subnet_id" {
    default = "subnet-b35e89d5"
}
variable "vpc_id"{
    default = "vpc-1961447e"
}

variable "i_from_port" {
    default = "80"
}

variable "i_to_port" {
    default = "80"
}
variable "i_protocol"{
    default = "tcp"
}
variable "i_cidr_block"{
    default = "192.168.0.0/16"
}
variable "e_from_port"{
    default = "0"
}
variable "e_to_port"{
    default = "0"
}
variable "e_protocol"{
    default = "-1"
}
variable "e_cidr_block"{
    default = ["0.0.0.0/0"]
}
