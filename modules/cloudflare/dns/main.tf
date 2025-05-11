resource "cloudflare_dns_record" "bakacore" {
  zone_id = data.cloudflare_zone.bakacore.zone_id
  content = var.droplet_ip
  name = "@"
  proxied = true
  ttl = 1
  type = "A"
}

resource "cloudflare_dns_record" "www" {
  zone_id = data.cloudflare_zone.bakacore.zone_id
  content = var.droplet_ip
  name = "www"
  proxied = true
  ttl = 1
  type = "A"
}

