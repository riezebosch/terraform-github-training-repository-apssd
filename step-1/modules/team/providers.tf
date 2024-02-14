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

    value = {
      source  = "pseudo-dynamic/value"
      version = "0.5.1"
    }
  }
}
