
module do_droplet {
    count = var.cloud_provider == "digitalocean" ? 1 : 0
    source = "../../digitalocean/droplet"
    providers = {
        digitalocean = digitalocean
    }
}

module do_secrets {
    count = var.cloud_provider == "digitalocean" ? 1 : 0
    source = "../../github/secrets"
    droplet_ip = module.do_droplet[0].droplet_ip
    providers = {
        github = github
    }
}