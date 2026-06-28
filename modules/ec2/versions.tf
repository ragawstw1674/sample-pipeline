terraform {
  required_version = "~> 1.15.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> v6.52.0"
    }
  }

  backend "s3" {
    use_lockfile = true
  }
}