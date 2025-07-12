terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#Kris check
resource "aws_wafv2_web_acl" "coaching16" {
  name        = "coaching16_waf"
  scope       = "REGIONAL"
  description = "WAF for coaching16"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "coaching16WAF"
    sampled_requests_enabled   = true
  }

  rule {
    name     = "limit-ip"
    priority = 1

    action {
      block {}
    }

    statement {
      rate_based_statement {
        limit              = 100
        aggregate_key_type = "IP"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "limitIP"
      sampled_requests_enabled   = true
    }
  }
}
