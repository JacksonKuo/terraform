data "digitalocean_ssh_key" "droplet" {
  name = "droplet"
}

data "digitalocean_domain" "bakacore" {
  name = "bakacore.com"
}