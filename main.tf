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


module "aws_elb" {
    source = "./modules/Aws_elb"
}

module "aws_route53_zone" {
  source = "./modules/Aws_Route53_Zone"
  dormain-name = var.domain-name
}


module "aws_route53_record" {
  source = "./modules/Aws_Route53_Record"
  zone_id = module.aws_route53_zone[count.index].zone_id
  name = module.aws_route53_zone[count.index].name
  aws_elb_zone_id = module.aws_elb.zone_id
  alias_name = module.aws_elb.dns_name
  count = length(var.domain-name)
}

resource "aws_instance" "instance-type"{
for_each = var.instance-type  
ami = "ami-0aa2b7722dc1b5612"
key_name = "Devinis"
instance_type = each.value
}
resource "aws_instance" "mongodb-client" {

}
