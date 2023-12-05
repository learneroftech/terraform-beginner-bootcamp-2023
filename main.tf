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

}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}
