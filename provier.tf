terraform {
     backend "s3" {
    bucket  = "s3-backend-bucket-aryan-singh-2025" # Name of the S3 bucket to store the state file
    key     = "Devlopment/terraform.tfstate" # Path within the bucket to store the state file
    region  = "ap-south-1" # Mumbai region
    profile = "backend-profile" # Make sure to set up this profile in your AWS CLI configuration
    encrypt = true # Enable encryption for the state file
    use_lockfile = true # Use lock file for state locking
    lock_table = "s3-backend-lock-table-aryan-singh-2025" # DynamoDB table for state locking
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
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
