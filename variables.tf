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

data "aws_security_group" "selected" {
   id = "sg-d4bb3baf"
}
variable "subnet_id" {
    default = "subnet-b35e89d5"
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
