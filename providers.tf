# Define providers to use - can use mutiple providers in the same code
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.4"

  cloud {}
}

# Configure the GitHub Provider, requires env variable GITHUB_TOKEN
provider "github" {
  # token = var.gittoken
  # owner = var.org_name
}