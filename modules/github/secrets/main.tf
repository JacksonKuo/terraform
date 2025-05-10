resource "github_actions_secret" "droplet_ip" {
  repository       = "app-springboot"
  secret_name      = "DROPLET_IP"
  plaintext_value  = var.droplet_ip
}

locals {
  droplet_ssh_private_key = file("/Users/jacksonkuo/.ssh/id_ed25519_droplet")
}

resource "github_actions_secret" "droplet_ssh_private_key" {
  repository       = "app-springboot"
  secret_name      = "DROPLET_SSH_PRIVATE_KEY"
  plaintext_value  = local.droplet_ssh_private_key
}