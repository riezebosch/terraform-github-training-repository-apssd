terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }

    env = {
      source  = "tchupp/env"
      version = "0.0.2"
    }
  }
}

provider "github" {
}
