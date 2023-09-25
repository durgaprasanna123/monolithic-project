provider "aws" {
region = "eu-north-1"
access_key = "AKIARP447NTPL4BWYXLQ"
secret_key = "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"
}


resource "aws_instance" "key" { 
ami = "ami-086ee6e5ed2ea343i4"
key_name = "mykey"
instance_type = "t3.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}


