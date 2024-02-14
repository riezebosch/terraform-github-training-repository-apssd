terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }

    restapi = {
      source  = "Mastercard/restapi"
      version = "1.18.1"
    }

    env = {
      source  = "tchupp/env"
      version = "0.0.2"
    }
  }
}

provider "github" {
}

provider "restapi" {
  uri = "https://api.github.com/"
  headers = {
    Accept               = "application/vnd.github+json"
    Authorization        = "Bearer ${data.env_variable.github_token.value}"
    X-GitHub-Api-Version = "2022-11-28"
  }
  write_returns_object = true
  debug                = true
}