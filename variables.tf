variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "aws_account" {
  description = "AWS Account ID"
  type        = string
  default     = "042956191338"
}

variable "aws_username" {
  description = "AWS Username"
  type        = string
  default     = "taejune"
}

variable "aws_role" {
  description = "AWS EKS Switching Role"
  type        = string
  default     = "AWSAccountRoleForCloudZCP"
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

variable "private_subnets" {
  description = "AWS Private Subnet CIDR blocks"
  type        = list
  default     = ["10.20.0.192/26", "10.20.1.192/26"]
}

variable "public_subnets" {
  description = "AWS Public Subnet CIDR blocks"
  type        = list
  default     = ["10.20.0.0/26", "10.20.1.0/26"]
}
