resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = var.name
  type    = "A"

  alias {
    name                   = var.alias_name
    zone_id                = var.aws_elb_zone_id
    evaluate_target_health = true
  }
}