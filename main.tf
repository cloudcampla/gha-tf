terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "live_cloud_camp" {
  bucket = "cloud-camp-live-gha"

  tags = {
    owner        = "david.dager"
    boootcamp    = "devops"
  }
}