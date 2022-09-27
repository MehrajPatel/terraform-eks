# provider "aws" {
#   profile = "terraform"
#   region  = "us-east-1"
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }

    backend "s3" {
    bucket = "terraform-webpage"
    key    = "tfstate"
    region = "us-west-2"
  }
}
