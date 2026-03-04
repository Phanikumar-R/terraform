resource "aws_route53_record" "www" {
  count =10  
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"  # this is called interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}



#roboshop.devopsskillup.online --> public ip ..This also need to be created


resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}"  # roboshop.devopsskillup.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[index(var.instances,"frontend")].public_ip]  # here index is one function and finding index of frontend component using index function
}
