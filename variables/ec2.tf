resource "aws_instance" "example"{

     ami = var.ami_instance

     instance_type = var.instance_type

     vpc_security_group_ids = [aws_security_group.allow_tls.id]

     tags = var.tags_ami
}


resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = var.description


    egress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }

    ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }

    tags= var.tags

}