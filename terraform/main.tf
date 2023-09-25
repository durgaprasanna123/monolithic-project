provider "aws" {
region = "eu-north-1"
access_key = "AKIARP447NTPJMLRJA5S"
secret_key = "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"
}

resource "aws_instance" "key" { 
ami = "ami-086ee6e5ed2ea3434"
instance_type = "t3.micro"
key_name = "mykey"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}
