# TODO: unable to use this since the response is not properly parsed: https://github.com/integrations/terraform-provider-github/issues/1776
# data "github_rest_api" "comments" {
#   endpoint = "repos/${resource.github_repository.this.full_name}/issues/${resource.github_issue.collaborators.number}/comments"
# }
data "http" "comments" {
  url = "https://api.github.com/repos/${resource.github_repository.this.full_name}/issues/${resource.github_issue.collaborators.number}/comments"
  request_headers = {
    Accept               = "application/vnd.github+json"
    Authorization        = "Bearer ${data.env_variable.github_token.value}"
    X-GitHub-Api-Version = "2022-11-28"
  }
}

# little hack to refresh collobarators on every apply
#   source: https://stackoverflow.com/a/73752527/129269
resource "value_unknown_proposer" "default" {}
resource "value_is_known" "collaborators" {
  value            = local.collaborators
  guid_seed        = var.name
  proposed_unknown = value_unknown_proposer.default.value
}

resource "github_repository_collaborator" "collaborator" {
  repository = resource.github_repository.this.name
  for_each   = value_is_known.collaborators.result ? local.collaborators : []
  username   = each.value
  permission = "push"
}
