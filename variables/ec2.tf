resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids= [aws_security_group.allow_tls.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {   # this is for terraform reference
  name        = var.sg_name  # this is for aws account
  description = var.sg_description

  egress {   # This is for outbound traffic
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cider_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {   # This is for inbound traffic
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cider_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  
  tags =  var.sg_tags
}