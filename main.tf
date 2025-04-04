

resource "digitalocean_droplet" "droplet" {
  image  = "debian-12-x64"
  name   = "debian-s-1vcpu-1gb-nyc1-01"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.droplet.id
  ]
}

resource "digitalocean_record" "bakacore" {
  domain = data.digitalocean_domain.bakacore.id
  type   = "A"
  name   = "@"
  ttl    = 1800
  value  = digitalocean_droplet.droplet.ipv4_address
}

resource "digitalocean_record" "www" {
  domain = data.digitalocean_domain.bakacore.id
  type   = "A"
  name   = "www"
  ttl    = 1800
  value  = digitalocean_droplet.droplet.ipv4_address
}

data "github_repository" "repo" {
  full_name = "JacksonKuo/app-springboot"
}

resource "github_actions_secret" "droplet_ip" {
  repository       = "app-springboot"
  secret_name      = "DROPLET_IP"
  plaintext_value  = digitalocean_droplet.droplet.ipv4_address
}

locals {
  droplet_ssh_private_key = file("/Users/jacksonkuo/.ssh/id_ed25519_droplet")
}

resource "github_actions_secret" "droplet_ssh_private_key" {
  repository       = "app-springboot"
  secret_name      = "DROPLET_SSH_PRIVATE_KEY"
  plaintext_value  = local.droplet_ssh_private_key
}