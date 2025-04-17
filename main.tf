provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0dc1b999cc147d528 "
instance_type = "t2.medium"
key_name = "netflix"
vpc_security_group_ids = ["sg-0b5d76c8dd04202fc"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
