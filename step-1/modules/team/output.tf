output "repository" {
  value = resource.github_repository.this.full_name
}

output "issue" {
  value = resource.github_issue.this.number
}
