variable "domain-name" {
  type = list(string)
  default = [ "dev.com", "test.com", "prod.com" ]
}

variable "instance_type" {
  type = list(string)
  default = [ "t2-micro", "t2-nano" ]
}