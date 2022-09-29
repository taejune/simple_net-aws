variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_session_token" {
  description = "AWS Session Token"
  type        = string
  default     = null
}

variable "aws_role_arn" {
  description = "AWS Assume Role ARN"
  type        = string
  default     = null
}

variable "vpc_cidr_block" {
  description = "AWS VPC CIDR block"
  type        = string
}

variable "subnet_cidr_block" {
  description = "AWS VPC CIDR block"
  type        = string
}
