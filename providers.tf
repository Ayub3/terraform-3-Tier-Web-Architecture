terraform {
  required_version = ">= 1.1.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# terraform {
#   required_version = ">= 0.13.1"

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = ">= 4.6"
#     }

#      null = {
#       source  = "hashicorp/null"
#       version = "~> 3.0"
#     }
#   }
# }

provider "aws" {
  region = var.aws_region
}