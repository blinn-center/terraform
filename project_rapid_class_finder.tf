resource "github_repository" "project_rapid_class_finder" {
  name        = "rapid-class-finder"
  description = "Find the class and section you're looking for in the blink of an eye!"

  visibility = "public"

  has_downloads = false
  has_issues    = true
  has_projects  = true
  has_wiki      = true
}

resource "cloudflare_record" "project_rapid_class_finder_api" {
  zone_id = cloudflare_zone.blinn_center.id
  type    = "CNAME"
  name    = "rapid-class-finder-api"
  value   = "rapid-class-finder.fly.dev"
  proxied = false
}
