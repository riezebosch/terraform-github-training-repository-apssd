locals {
  collaborators = toset([for comment in jsondecode(data.http.comments.response_body) : comment.user.login])
}
