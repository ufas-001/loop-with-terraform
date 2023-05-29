resource "aws_route53_zone" "example" {
  name = var.dormain-name
}

output "zone_id" {
  value = aws_route53_zone.example.zone_id
}

output "name" {
  value = aws_route53_zone.example.name
}
