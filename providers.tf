terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "testtf-organization"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  #cloud {
  #  organization = "testtf-organization"
  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}

provider "aws" {
}

provider "random" {
  # Configuration options
}