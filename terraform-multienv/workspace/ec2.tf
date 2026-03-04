resource "aws_instance" "example" {
  ami           = local.ami_id
  instance_type = lookup(var.instance_type, local.environment)
  vpc_security_group_ids= [aws_security_group.allow_tls.id]

  tags = {
    Name = "${var.project}.${local.environment}"
    Project = "roboshop"
    Environment = local.environment

  }
}

resource "aws_security_group" "allow_tls" {   
  name        = "allow_all_terraform-${local.environment}" # this is for aws account
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {   # This is for outbound traffic
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {   # This is for inbound traffic
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  
  tags = {
    Name = "allow_all_terraform-${local.environment}"
  }
}