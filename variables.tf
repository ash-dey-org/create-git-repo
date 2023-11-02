
/*
variable "org_name" {
  description = "Name of the Github organization"
  type        = string
}

*/

variable "repos" {
  type = list(object({
    name          = string
    description   = string
    gitignore     = string
    environments  = list(string)
    dev_team_name = string
    ops_team_name = string
  }))

}

/*
variable "dev_team_name" {
  description = "Name of the Github Team id to add to repo"
  type        = string
}

variable "ops_team_name" {
  description = "Name of the Github Team id to add to repo"
  type        = string
}

*/

