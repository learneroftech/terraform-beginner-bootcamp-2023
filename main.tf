terraform {
  required_providers {
    terratowns = {
      source  = "local/providers/terratowns"
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
  #cloud {
  #  organization = "testtf-organization"
  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}

}

provider "terratowns" {
  endpoint = "http:localhost:4567"
  user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1" 
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0" 
}


#provider "terratowns" {
#  endpoint = var.terratowns_endpoint
#  user_uuid = var.teacherseat_user_uuid
#  token = var.terratowns_access_token
#}

#module "home_arcanum_hosting" {
#  source = "./modules/terrahome_aws"
#  user_uuid = var.teacherseat_user_uuid
#  public_path = var.arcanum.public_path
#  content_version = var.arcanum.content_version
#}

#resource "terratowns_home" "home" {
#  name = "How to play Arcanum in 2023!"
#  description = <<DESCRIPTION
#Arcanum is a game from 2001 that shipped with alot of bugs.
#Modders have removed all the originals making this game really fun
#to play (despite that old look graphics). This is my guide that will
#show you how to play arcanum without spoiling the plot.
#DESCRIPTION
#  domain_name = module.home_arcanum_hosting.domain_name
#  town = "missingo"
#  content_version = var.arcanum.content_version
#}

#module "home_payday_hosting" {
#  source = "./modules/terrahome_aws"
#  user_uuid = var.teacherseat_user_uuid
#  public_path = var.payday.public_path
#  content_version = var.payday.content_version
#}

#resource "terratowns_home" "home_payday" {
#  name = "Making your Payday Bar"
#  description = <<DESCRIPTION
#Since I really like Payday candy bars but they cost so much to import
#into Canada, I decided I would see how I could my own Paydays bars,
#and if they are most cost effective.
#DESCRIPTION
#  domain_name = module.home_payday_hosting.domain_name
#  town = "missingo"
#  content_version = var.payday.content_version
#}
##module "terrahouse_aws" {
#  source = "./modules/terrahouse_aws"
#  user_uuid = var.user_uuid
#  bucket_name = var.bucket_name
#  index_html_filepath = var.index_html_filepath
#  error_html_filepath = var.error_html_filepath
#  content_version = var.content_version
#}