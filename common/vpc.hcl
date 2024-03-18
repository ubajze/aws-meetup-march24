terraform {
  source = "../../../modules//vpc"
}

locals {
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  settings     = local.account_vars.locals.settings
}

inputs = {
  name = local.settings.vpc_name
}
