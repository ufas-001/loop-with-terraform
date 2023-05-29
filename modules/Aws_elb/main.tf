resource "aws_elb" "main" {
  name               = "foobar-terraform-elb"
  availability_zones = ["us-east-1c"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

output "zone_id" {
  value = aws_elb.main.zone_id
}

output "dns_name" {
  value = aws_elb.main.dns_name
}