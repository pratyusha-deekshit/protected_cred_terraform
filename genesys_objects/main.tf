module "classifier_users" {
  source = "./modules/users"
}

resource "genesyscloud_tf_export" "export" {
  directory          = "./genesyscloud"
  export_as_hcl      = true
  resource_types     = ["genesyscloud_user"]
  include_state_file = true
}
