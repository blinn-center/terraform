variable "github_api_token" {}

provider "github" {
  token = fileexists("github.key") ? file("github.key") : var.github_api_token
  owner = "blinn-center"
}

data "github_organization" "blinn_center" {
  name = "blinn-center"
}

resource "github_repository" "terraform" {
  name        = "terraform"
  description = "Blinn Center's Terraform configuration"

  visibility = "public"

  has_downloads = false
  has_issues    = true
  has_projects  = false
  has_wiki      = true
}
