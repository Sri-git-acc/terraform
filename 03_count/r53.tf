resource "aws_route53_record" "sample" {
  count = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.insta[count.index].private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "sample2" {
  zone_id = var.zone_id
  name    = var.domain
  type    = "A"
  ttl     = 1
  records = [aws_instance.insta[2].public_ip]
  allow_overwrite = true
}
