resource "aws_instance" "example" {

  #for_each = var.instances
  for_each = toset(var.instances) # This is to convert into set
  ami           = "ami-0220d79f3f480ecf5"
  #instance_type = each.value
  instance_type = "t3.micro" # Here we not using key/value pair notation so directly giving instance type for set
  vpc_security_group_ids= [aws_security_group.allow_tls.id]

  tags = {
    Name = each.key
    Project = "roboshop"

  }
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