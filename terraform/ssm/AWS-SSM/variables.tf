variable "parameter_name" {
  description = "SSM parameter path (e.g. /myapp/config/db-url)"
  type        = string
}

variable "parameter_value" {
  description = "Value to store in the parameter"
  type        = string
  sensitive   = true
}

variable "parameter_type" {
  description = "SSM parameter type (String, StringList, SecureString)"
  type        = string
  default     = "String"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
