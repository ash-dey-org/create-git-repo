/*
variable "org_name" {
  description = "Name of the Github organization"
  type        = string
}

*/

variable "repo_name" {
  description = "Name of the Github repo to be created"
  type        = string
}

variable "gitignore" {
  description = "Name of the gitignore template"
  type        = string
}

variable "repo_description" {
  description = "Description of the Github repo to be created"
  type        = string
}

variable "dev_team_name" {
  description = "Name of the Github Team id to add to repo"
  type        = string
}

variable "ops_team_name" {
  description = "Name of the Github Team id to add to repo"
  type        = string
}

variable "environments" {
  description = "Name of the Github repo environment"
  type        = list(string)
}
