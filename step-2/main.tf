module "collaborators" {
  source = "./modules/collaborators"
  for_each = {
    for index, team in data.terraform_remote_state.step-1.outputs.teams : team.repository => team
  }
  repository = each.value.repository
  issue      = each.value.issue

}
