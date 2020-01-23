resource "aws_route53_record" "jenkins_master" {
  zone_id = "${var.hosted_zone_id}"
  name    = "jenkins.devopsforce.io"
  type    = "A"

  alias {
    name                   = "${aws_elb.jenkins_elb.dns_name}"
    zone_id                = "${aws_elb.jenkins_elb.zone_id}"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "registry" {
  zone_id = "${var.hosted_zone_id}"
  name    = "registry.devopsforce.io"
  type    = "A"

  alias {
    name                   = "${aws_elb.registry_elb.dns_name}"
    zone_id                = "${aws_elb.registry_elb.zone_id}"
    evaluate_target_health = true
  }
}
