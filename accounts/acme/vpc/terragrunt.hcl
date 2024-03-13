include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules//vpc"
}

locals {
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  settings     = local.account_vars.locals.settings

  vpc_name = local.settings.vpc_name
}

inputs = {
  name = local.vpc_name
}
