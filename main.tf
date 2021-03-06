terraform {

  cloud {
    organization = "hc-tut"

    workspaces {
      name = "learn-terraform-cloud"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws-region
}

resource "aws_kms_key" "terraform" {
  description = "Example key for Cassandra table"
}
