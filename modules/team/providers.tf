terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.0.0"
    }

    value = {
      source  = "pseudo-dynamic/value"
      version = "0.5.1"
    }

    env = {
      source  = "tchupp/env"
      version = "0.0.2"
    }
  }
}


