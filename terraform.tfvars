# export GITHUB_TOKEN before runnign this code
# change the variable values to suit your need

# repo_name        = "create-git-repo"
# repo_description = "Create repo using terraform code"
# org_name         = "ash-dey-org"
# gitignore ref https://github.com/github/gitignore
# gitignore     = "Terraform"
# dev_team_name = "dev-team"
# ops_team_name = "ops-team"
# in github repo --> setting --> environment --> select appropriate branches (custom bramch policy applied)
# environments = ["dev", "tst", "uat", "prd"]



repos = [
  {
    name          = "create-git-repo"
    description   = "Create git repo using terraform"
    gitignore     = "Terraform"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },

  {
    name          = "tfc-management"
    description   = "Manage terraform cloud workspace using terraform"
    gitignore     = "Terraform"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },

  {
    name          = "tf-azure-networking"
    description   = "Setup Azure core networking using terraform"
    gitignore     = "Terraform"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },

  {
    name          = "sh-azure-base-setup"
    description   = "Create SP, RG, assign role to RG using shell script"
    gitignore     = "Go"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },

  {
    name          = "ps-azure-base-setup"
    description   = "Create SP, RG, assign role to RG using shell script"
    gitignore     = "Go"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },
  {
    name          = "py-utilities"
    description   = "general utilities using python"
    gitignore     = "Python"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },
  {
    name          = "tf-azure-shared-core"
    description   = "shared core utilities"
    gitignore     = "Terraform"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },
  {
    name          = "tf-defender-report"
    description   = "infrastructure for defender report"
    gitignore     = "Terraform"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },
  {
    name          = "tf-azdevops-management"
    description   = "create azure devops project using terraform"
    gitignore     = "Terraform"
    environments  = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  }

]