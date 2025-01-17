terraform {
  backend "remote" {
    organization = "sumedha-niroshan"

    workspaces {
      name = "lac"
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
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-053b12d3152c0cc71" # Canonical, Ubuntu, 24.04, amd64 noble image ap-south-1
  instance_type = "t2.micro"
}
