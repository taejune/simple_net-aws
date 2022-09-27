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

variable "aws_role_arn" {
  description = "AWS Assume Role ARN"
  type        = string
}

variable "vpc_cidr_block" {
  description = "AWS VPC CIDR block"
  type        = string
  default     = "10.0.0.0/23"

}

variable "subnet_cidr_block" {
  description = "AWS VPC CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}
