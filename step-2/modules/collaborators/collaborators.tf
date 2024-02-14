# TODO: unable to use this since the response is not properly parsed: https://github.com/integrations/terraform-provider-github/issues/1776
# data "github_rest_api" "comments" {
#   endpoint = "repos/${resource.github_repository.this.full_name}/issues/${resource.github_issue.collaborators.number}/comments"
# }
data "http" "comments" {
  url = "https://api.github.com/repos/${var.repository}/issues/${var.issue}/comments"
  request_headers = {
    Accept               = "application/vnd.github+json"
    Authorization        = "Bearer ${data.env_variable.github_token.value}"
    X-GitHub-Api-Version = "2022-11-28"
  }
}

resource "github_repository_collaborator" "collaborator" {
  repository = var.repository
  for_each   = local.collaborators
  username   = each.value
  permission = "push"
}
