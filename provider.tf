provider "digitalocean" {
  token = var.do_token
}

provider "github" {
  token = var.gh_token
  owner = var.gh_owner
}