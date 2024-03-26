module "team" {
  source  = "riezebosch/training-repository/github"
  version = "0.0.7"
  for_each = {
    for index, team in var.teams : team.name => team
  }
  repository = each.value.name
  template = {
    owner      = "proscrumdev"
    repository = "battelship-${each.value.stack}"
  }
}
