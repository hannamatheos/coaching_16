#Terraform script to build serverless URL shortener architecture

provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  required_version = ">= 1.0.0"
  # required_providers {
  #   aws = {
  #     source  = "hashicorp/aws"
  #     version = "~> 5.0"
  #   }
  }


# IAM role for Lambda
resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda_exec_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# DynamoDB Table
resource "aws_dynamodb_table" "url_table" {
  name         = "UrlShortener"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "shortid"

  attribute {
    name = "shortid"
    type = "S"
  }
}

# Lambda: Create URL
resource "aws_lambda_function" "create_url" {
  filename         = "create_url.zip"
  function_name    = "create_url"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "index.handler"
  runtime          = "nodejs18.x"
  source_code_hash = filebase64sha256("create_url.zip")
  timeout          = 10

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.url_table.name
    }
  }
}

# Lambda: Retrieve URL
resource "aws_lambda_function" "retrieve_url" {
  filename         = "retrieve_url.zip"
  function_name    = "retrieve_url"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "index.handler"
  runtime          = "nodejs18.x"
  source_code_hash = filebase64sha256("retrieve_url.zip")
  timeout          = 10

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.url_table.name
    }
  }
}

# API Gateway
resource "aws_apigatewayv2_api" "url_api" {
  name          = "url-shortener-api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_integration" "create_url_integration" {
  api_id                 = aws_apigatewayv2_api.url_api.id
  integration_type       = "AWS_PROXY"
  integration_uri        = aws_lambda_function.create_url.invoke_arn
  integration_method     = "POST"
  payload_format_version = "2.0"
}

resource "aws_apigatewayv2_integration" "retrieve_url_integration" {
  api_id                 = aws_apigatewayv2_api.url_api.id
  integration_type       = "AWS_PROXY"
  integration_uri        = aws_lambda_function.retrieve_url.invoke_arn
  integration_method     = "GET"
  payload_format_version = "2.0"
}

resource "aws_apigatewayv2_route" "create_url_route" {
  api_id    = aws_apigatewayv2_api.url_api.id
  route_key = "POST /newurl"
  target    = "integrations/${aws_apigatewayv2_integration.create_url_integration.id}"
}

resource "aws_apigatewayv2_route" "retrieve_url_route" {
  api_id    = aws_apigatewayv2_api.url_api.id
  route_key = "GET /{shortid}"
  target    = "integrations/${aws_apigatewayv2_integration.retrieve_url_integration.id}"
}

resource "aws_apigatewayv2_stage" "default" {
  api_id      = aws_apigatewayv2_api.url_api.id
  name        = "$default"
  auto_deploy = true
}

resource "aws_lambda_permission" "api_create_url" {
  statement_id  = "AllowAPIGatewayInvokeCreateURL"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.create_url.arn
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_apigatewayv2_api.url_api.execution_arn}/*/*"
}

resource "aws_lambda_permission" "api_retrieve_url" {
  statement_id  = "AllowAPIGatewayInvokeRetrieveURL"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.retrieve_url.arn
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_apigatewayv2_api.url_api.execution_arn}/*/*"
}

# Custom Domain (Assuming certificate already exists)
resource "aws_apigatewayv2_domain_name" "custom_domain" {
  domain_name = "api.yourdomain.com"

  domain_name_configuration {
    certificate_arn = "arn:aws:acm:us-east-1:123456789012:certificate/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    endpoint_type   = "REGIONAL"
    security_policy = "TLS_1_2"
  }
}

resource "aws_apigatewayv2_api_mapping" "custom_mapping" {
  api_id      = aws_apigatewayv2_api.url_api.id
  domain_name = aws_apigatewayv2_domain_name.custom_domain.id
  stage       = aws_apigatewayv2_stage.default.id
}

# Route53 Record
resource "aws_route53_record" "api_alias" {
  zone_id = "Z3P5QSUBK4POTI" # Replace with your hosted zone ID
  name    = "api.yourdomain.com"
  type    = "A"

  alias {
    name                   = aws_apigatewayv2_domain_name.custom_domain.domain_name_configuration[0].target_domain_name
    zone_id                = aws_apigatewayv2_domain_name.custom_domain.domain_name_configuration[0].hosted_zone_id
    evaluate_target_health = true
  }
}

# WAF Web ACL
resource "aws_wafv2_web_acl" "api_acl" {
  name        = "api-waf"
  description = "WAF for API Gateway"
  scope       = "REGIONAL"
  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "apiWaf"
    sampled_requests_enabled   = true
  }

  rule {
    name     = "rate-limit"
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
      metric_name                = "rateLimit"
      sampled_requests_enabled   = true
    }
  }
}

resource "aws_wafv2_web_acl_association" "api_acl_assoc" {
  resource_arn = aws_apigatewayv2_stage.default.arn
  web_acl_arn  = aws_wafv2_web_acl.api_acl.arn
}