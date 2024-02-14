resource "github_repository" "this" {
  name       = var.name
  visibility = "public"
  has_issues = true

  template {
    owner                = "proscrumdev"
    repository           = "battleship-${var.stack}"
    include_all_branches = false
  }
}
