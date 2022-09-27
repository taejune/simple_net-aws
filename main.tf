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
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  assume_role {
    role_arn = var.aws_role_arn
  }
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
