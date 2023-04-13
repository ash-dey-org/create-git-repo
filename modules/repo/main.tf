
##### To DO ######
# update dvelop branch creation dependency on main.

# read team information
data "github_team" "dev_team" {
  slug = var.dev_team_name
}

data "github_team" "ops_team" {
  slug = var.ops_team_name
}

# create repo
resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = "public"
  has_issues  = true
  # has_wiki    = false
  # has_projects = false
  auto_init = true
  gitignore_template = var.gitignore

}

# create branch

data "github_branch" "develop" {
  repository = github_repository.repo.name
  branch     = "develop"
}

resource "github_branch" "main" {
  repository    = github_repository.repo.name
  branch        = "main"
  source_branch = "develop"
  depends_on    = [github_repository_file.readme]
}

resource "github_branch" "test" {
  repository    = github_repository.repo.name
  branch        = "test"
  source_branch = "develop"
  depends_on    = [github_repository_file.readme]
}

resource "github_branch" "uat" {
  repository    = github_repository.repo.name
  branch        = "uat"
  source_branch = "develop"
  depends_on    = [github_repository_file.readme]
}

# set default branch
resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = data.github_branch.develop.branch

}

# set branch protection rules for main
resource "github_branch_protection" "main" {
  repository_id = github_repository.repo.node_id
  pattern       = "main"
  enforce_admins = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }

  push_restrictions = [data.github_team.dev_team.node_id,data.github_team.ops_team.node_id]
}

# set branch protection rules for develop
resource "github_branch_protection" "develop" {
  repository_id = github_repository.repo.node_id
  pattern       = "develop"
  enforce_admins = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }

  depends_on    = [github_repository_file.readme]
}

# set branch protection rules for develop
resource "github_branch_protection" "uat" {
  repository_id = github_repository.repo.node_id
  pattern       = "uat"
  enforce_admins = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }

}

# Add a team to the repository write permission
resource "github_team_repository" "dev_team_repo" {
  team_id    = data.github_team.dev_team.id
  repository = github_repository.repo.name
  permission = "push"
}

# Add a team to the repository read permission
resource "github_team_repository" "ops_team_repo" {
  team_id    = data.github_team.ops_team.id
  repository = github_repository.repo.name
  permission = "maintain"
}

/*

# upload .gitignore
resource "github_repository_file" "gitignore" {
  repository     = github_repository.repo.name
  branch         = "develop"
  file           = ".gitignore"
  */
  # content        = "**/*.tfstate"
  /*
  commit_message = "Creating git repo, inital commit"
  commit_author  = "ash-dey"
  # commit_email        = "admin@abc.xyx"
  overwrite_on_create = true
}
*/


resource "github_repository_environment" "repo-env" {

  for_each = toset(var.environments)

  environment  = each.key
  repository   = github_repository.repo.name

  deployment_branch_policy {
    protected_branches          = false
    custom_branch_policies = true
  }
}

# upload .gitignore
resource "github_repository_file" "readme" {
  repository     = github_repository.repo.name
  branch         = "develop"
  file           = "sample.txt"
  content        = "Some text content uploaded during repo creation, just to test ....."
  commit_message = "Creating git repo, inital commit"
  commit_author  = "ash-dey"
  commit_email        = "user@someemail.somedomain.com"
  overwrite_on_create = true
}

