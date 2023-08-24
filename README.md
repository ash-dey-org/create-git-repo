Use Terraform to create github repository
=========================================

Creates Gitub repository\
Assigns permission\
Sets default branch\
Sets branch protection rules\
Sets environments for Github Actions

1. Define the following environment variables

### Terraform cloud

export TF_CLOUD_ORGANIZATION=\
export TFE_TOKEN=\
export TF_WORKSPACE=

### Github
export GITHUB_TOKEN=\
export GITHUB_OWNER=

2. Update the content of terraform.tfvars file, always add the new repo to be created at bottom.
3. Terraform plan
4. Terraform apply