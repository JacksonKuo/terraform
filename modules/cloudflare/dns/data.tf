data "cloudflare_zone" "bakacore" {
  filter = {
    name = "bakacore.com"
  }
}