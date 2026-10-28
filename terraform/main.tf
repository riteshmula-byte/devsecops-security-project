
# Intentionally insecure example for IaC scanning in this lab.
# Do not apply this configuration to real infrastructure.

terraform {
  required_version = ">= 1.0"
}

resource "aws_security_group" "insecure_lab_example" {
  name        = "devsecops-insecure-lab"
  description = "Intentionally insecure security testing example"

  ingress {
    description = "Lab example: overly permissive inbound access"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
