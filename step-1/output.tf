output "teams" {
  value = [
    for team in module.team : {
      repository = team.repository
      issue      = team.issue
    }
  ]
}
