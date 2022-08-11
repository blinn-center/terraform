resource "github_repository" "project_landing" {
  name         = "landing"
  description  = "Blinn Center's landing page"
  homepage_url = "https://blinn.center"

  visibility = "public"

  has_downloads = false
  has_issues    = true
  has_projects  = true
  has_wiki      = true
}
