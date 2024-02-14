module "team" {
  source = "./modules/team"
  for_each = {
    for index, team in var.teams : team.name => team
  }
  name  = each.value.name
  stack = each.value.stack
}
