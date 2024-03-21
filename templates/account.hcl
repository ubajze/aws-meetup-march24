
locals {
  account_name = "${basename(get_terragrunt_dir())}"
  settings     = yamldecode(file("settings.yaml"))
}
