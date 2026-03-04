resource "aws_instance" "example" {
  /*ami           = "ami-0220d79f3f480ecf5"*/
  ami             = local.ami_id
  instance_type =    local.instance_type
  vpc_security_group_ids= [aws_security_group.allow_tls.id]

  tags = local.ec2_final_tags
}

resource "aws_security_group" "allow_tls" {   # this is for terraform reference
  name        = "allow_all_terraform" # this is for aws account
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
    Name = "allow_all_terraform"
  }
}