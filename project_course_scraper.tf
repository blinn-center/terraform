resource "github_repository" "project_course_scraper" {
  name        = "course-scraper"
  description = "A scraper for Blinn College's Dynamic Schedule"

  visibility = "public"

  has_downloads = false
  has_issues    = true
  has_projects  = true
  has_wiki      = true

  pages {
    source {
      branch = "gh-pages"
    }
  }
}
