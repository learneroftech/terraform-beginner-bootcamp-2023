terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
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
      name = "terra-house-1"
    }
  }

}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "home_arcanum_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.arcanum.public_path
  content_version = var.arcanum.content_version
}

resource "terratowns_home" "home" {
  name = "How to play Arcanum in 2023!"
  description = <<DESCRIPTION
Arcanum is a game from 2001 that shipped with a lot of bugs.
Modders have removed all the originals making this game really fun
to play (despite that old look graphics). This is my guide that will
show you how to play arcanum without spoiling the plot.
DESCRIPTION
  domain_name = module.home_arcanum_hosting.domain_name
  town = "missingo"
  content_version = 1
}

#module "home_pho_hosting" {
#  source = "./modules/terrahome_aws"
#  user_uuid = var.teacherseat_user_uuid
#  public_path = var.pho.public_path
#  content_version = var.pho.content_version
#}
#
#resource "terratowns_home" "home_pho" {
#  name = "Making your Pho"
#  description = <<DESCRIPTION
#Since I really like Pho, I want to cook it myself!
#Pho is one of the most popular Vietnamese entrees, and
#you should make it yourself! Then you could truly say it's "Pho me!"
#DESCRIPTION
#  domain_name = module.home_pho_hosting.domain_name
#  town = "missingo"
#  content_version = 1
#}