terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.21.0"
    }

    github = {
      source  = "integrations/github"
      version = "4.28.0"
    }
  }
}
