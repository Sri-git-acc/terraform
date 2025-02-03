resource "aws_route53_record" "r53" {
    count = length(var.instances)
    zone_id = var.zone_id
    name = "${var.instances[count.index]}-${var.environment}.${var.domain}"
    type    = "A"
    ttl     = 1
    records = [aws_instance.insta[count.index] == "frontend" ? aws_instance.insta[count.index].public_ip : aws_instance.insta[count.index].private_ip]
    allow_overwrite = true
}

