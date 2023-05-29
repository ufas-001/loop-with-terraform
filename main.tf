
/* resource "aws_elb" "main" {
  name               = "foobar-terraform-elb"
  availability_zones = ["us-east-1c"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
} */

/* resource "aws_route53_zone" "example" {
  name = var.domain-name[count.index]
  count = length(var.domain-name)
} */

/* resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.example[count.index].zone_id
  name    = aws_route53_zone.example[count.index].name
  type    = "A"

  alias {
    name                   = aws_elb.main.dns_name
    zone_id                = aws_elb.main.zone_id
    evaluate_target_health = true
  }

  count = length(var.domain-name)
} */


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

# Declaration of aws vpc availabilty zone
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mongodb-client" {
    ami = "ami-0889a44b331db0194"

}

resource "aws_instance" "name" {
  
}