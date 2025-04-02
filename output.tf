output "droplet_ip" {
  value = data.digitalocean_droplet.bakacore.ipv4_address
}