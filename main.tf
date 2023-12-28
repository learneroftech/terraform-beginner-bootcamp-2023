terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "testtf-organization"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  cloud {
    organization = "testtf-organization"
    workspaces {
      name = "terraform-cloud"
    }
  }

}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
}

# My Personal Edit: Here's my Terraform Token that expires 1/26/2023: JmdKut9dr3S9uQ.atlasv1.du1zenNy8TxtE6g0Bem7GETlwVHBf43vqA3h6l2M33j0LylDLnI13HUTAi1i8ygPpzQ