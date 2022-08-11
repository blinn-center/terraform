terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

variable "cloudflare_api_token" {

}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_zone" "blinn_center" {
  account_id = "1c495e64ff5fd527342d7b7bf6731a1f"
  zone       = "blinn.center"
}
