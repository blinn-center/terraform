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

resource "cloudflare_record" "project_landing_root" {
  zone_id = cloudflare_zone.blinn_center.id
  type    = "CNAME"
  name    = "@"
  value   = "blinn-center-landing.pages.dev"
  proxied = true
}

resource "cloudflare_record" "project_landing_www" {
  zone_id = cloudflare_zone.blinn_center.id
  type    = "CNAME"
  name    = "www"
  value   = "blinn-center-landing.pages.dev"
  proxied = true
}
