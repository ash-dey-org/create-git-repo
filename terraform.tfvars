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
    name        = "create-git-repo"
    description = "Create repo using terraform code"
    gitignore     = "Terraform"
    environments = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  },

   {
    name        = "tfc-management"
    description = "Create repo using terraform code"
    gitignore     = "Terraform"
    environments = ["dev", "tst", "uat", "prd"]
    dev_team_name = "dev-team"
    ops_team_name = "ops-team"
  }
]