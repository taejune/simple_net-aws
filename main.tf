terraform {
  backend "local" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
#  shared_config_files      = [".aws/conf"]
#  shared_credentials_files = [".aws/creds"]
  profile                  = "dev"
  region                   = var.aws_region
}

data "aws_availability_zones" "available" {}

locals {
  common = {
    tags = {
      Terraform   = "true"
      Environment = "dev"
      CreatedBy   = "taejune"
    }
  }
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}
