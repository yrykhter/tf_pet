/******************************
TERRAGRUNT CONFIGURATION
******************************/

locals {
  # Automatically load region-level variables
  region_vars = read_terragrunt_config(find_in_parent_folders("region.hcl"))

  # Automatically load environment-level variables
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

}

// remote_state {
//   backend = "gcs"
//   config = {
//     bucket  = "bucket-for-terraform-states"
//     prefix  = path_relative_to_include()
//   }
//   generate = {
//     path      = "backend.tf"
//     if_exists = "overwrite_terragrunt"
//   }
// }

inputs = merge(
  local.region_vars.locals,
  local.environment_vars.locals,
)
