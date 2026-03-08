resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids= [aws_security_group.allow_tls.id]

  tags = {
    Name = "Terraform-state-demo"
    Project = "roboshop"

  }
}

resource "aws_security_group" "allow_tls" {   # this is for terraform reference
  name        = "allow_all_terraform-remote-state" # this is for aws account
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


  
  tags = {
    Name = "allow_all_terraform"
  }
}