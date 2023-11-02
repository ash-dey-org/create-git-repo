module "git-repo" {
  source = "./modules/repo"

  for_each = {
    for index, repo in var.repos :
    repo.name => repo
  }

  # org_name = var.org_name
  repo_name        = each.value.name
  repo_description = each.value.description
  gitignore        = each.value.gitignore

  environments = each.value.environments

  dev_team_name = each.value.dev_team_name
  ops_team_name = each.value.ops_team_name
}