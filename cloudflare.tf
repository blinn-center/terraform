variable "cloudflare_api_token" {}

provider "cloudflare" {
  api_token = fileexists("cloudflare.key") ? file("cloudflare.key") : var.cloudflare_api_token
}

resource "cloudflare_zone" "blinn_center" {
  account_id = "1c495e64ff5fd527342d7b7bf6731a1f"
  zone       = "blinn.center"
}

resource "cloudflare_record" "spf" {
  zone_id = cloudflare_zone.blinn_center.id
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
}

resource "cloudflare_record" "github_verification" {
  zone_id = cloudflare_zone.blinn_center.id
  type    = "TXT"
  name    = "_github-challenge-blinn-center-org"
  value   = "ac5b3939da"
}
