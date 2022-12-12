resource "aws_route53_record" "Component" {
  zone_id = "Z00304323CCS6RATXVYGS"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = 10
  records = [aws_spot_instance_request.spot_worker.private_ip]

}