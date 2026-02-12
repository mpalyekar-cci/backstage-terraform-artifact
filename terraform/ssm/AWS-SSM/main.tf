terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_ssm_parameter" "this" {
  name        = var.parameter_name
  description = "Managed by Terraform (Backstage)"
  type        = var.parameter_type
  value       = var.parameter_value
}
