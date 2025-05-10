terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
      configuration_aliases = [digitalocean.parent]
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
      configuration_aliases = [github.parent]
    }
  }
}