terraform {
  required_version = ">= 1.0.0"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud",
      version = ">= 1.6.0"
    }
  }
}

provider "genesyscloud" {
  aws_region = "eu-west-2"
}


resource "genesyscloud_tf_export" "export" {
  directory          = "./genesyscloud"
  export_as_hcl      = true
  resource_types     = ["genesyscloud_user"]
  include_state_file = true
}
