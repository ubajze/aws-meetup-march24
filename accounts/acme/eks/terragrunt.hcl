include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules//eks"
}

dependency "vpc" {
  config_path = "${get_terragrunt_dir()}/../vpc"

  mock_outputs = {
    private_subnets = {
      "subnet-1" = "10.10.1.0/24",
      "subnet-1" = "10.10.2.0/24",
    }
  }
  mock_outputs_allowed_terraform_commands = ["plan", "validate", "destroy"]
}

inputs = {
  subnets = dependency.vpc.outputs.private_subnets
}
