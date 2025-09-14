terraform {
  required_version = ">= 1.0.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-2311202"
    key            = "tfstate/terraform.tfstate"   # path inside the bucket
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
