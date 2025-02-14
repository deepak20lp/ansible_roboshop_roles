resource "aws_instance" "roboshop" {
  for_each      = var.instance_type
  ami           = var.ami
  instance_type = each.value
  security_groups = ["devops-security-group"]
  tags = {
    Name = each.key
  }
}


resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.roboshop
  zone_id  = var.zone_id
  name     = "${each.key}.${var.domain_name}"
  type     = "A"
  ttl      = 10
  records  = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}

# output "instances_details" {
#     value = aws_instance.roboshop
# }