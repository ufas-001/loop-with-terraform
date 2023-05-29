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