terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }

    # Adding random provider for generating random values for resources
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1" # Mumbai region
}

# Create a VPC
resource "aws_vpc" "mumbai_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "MumbaiVPC"
  }
}
