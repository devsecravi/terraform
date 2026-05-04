resource "aws_instance" "example"{

    
  ami = "ami-0220d79f3f480ecf5"

   instance_type = "t3.micro"

   vpc_security_group_ids = [aws_security_group.allow_tls.id]

   provisioner "local-exec"{
         command = "echo '${self.public_ip}' > inventory.ini"
    }

    provisioner "local-exec"{
         when = destroy
         command = "echo 'Deleting the instance'"
    }
    provisioner "local-exec" {
        command = "exit 1"
    }

    provisioner "local-exec"{
         when = destroy
         command = "echo > inventory.ini"
    }
    


    tags = {

       Name = "provisioner-demo"
          Project = "roboshop"
    }
}


resource "aws_security_group" "allow_tls" {
   name        = "allow-all-roboshop"
   description = "Allow TLS inbound traffic and all outbound traffic"


     egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags= {
         Name= "allow-all-terraform"
    }

}