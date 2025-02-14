variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = {
    mongodb   = "t3.medium"
    web       = "t2.micro"
    catalogue = "t2.micro"
    redis     = "t2.micro"
    user      = "t2.micro"
    mysql     = "t3.medium"
    shipping  = "t2.micro"
    cart      = "t2.micro"
    rabbitmq  = "t2.micro"
    payment   = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z00782972XMRET3PDT03"

}
variable "domain_name" {
  default = "deepakreddy.online"
}


# variable "ingress" {
#     default = [
#     {
#         from_port = 80
#         to_port = 80
#         description = "allowing PORT 80 from public"
#         protocol = "tcp"
#         cidr_blocks = ["0.0.0.0/0"]
#     },
#         {
#         from_port = 443
#         to_port = 443
#         description = "allowing PORT 443 from public"
#         protocol = "tcp"
#         cidr_blocks = ["0.0.0.0/0"]
#     },
#     {
#         from_port = 22
#         to_port = 22
#         description = "allowing PORT 22 from public"
#         protocol = "tcp"
#         cidr_blocks = ["0.0.0.0/0"]
#     },
#     ]
# }