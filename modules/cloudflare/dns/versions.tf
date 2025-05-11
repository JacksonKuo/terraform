terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 5.0"
      configuration_aliases = [cloudflare.child]
    }
  }
}