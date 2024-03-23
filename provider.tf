terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Use credential files instead of defining in this file

# Set-Location $env:USERPROFILE
# cd .\.aws\

provider "aws" {
  region = "ap-southeast-1"
  # shared_config_files      = ["~/.aws/conf"]
  # shared_credentials_files = ["~/.aws/credentials"]
  profile                    = "dafa-sre" # Using AWS SSO
}