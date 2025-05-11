
module do_droplet {
    count = var.cloud_provider == "digitalocean" ? 1 : 0
    source = "../../digitalocean/droplet"
    providers = {
        digitalocean.child = digitalocean.parent
    }
}

module cf_dns {
    count = var.cloud_provider == "digitalocean" ? 1 : 0
    source = "../../cloudflare/dns"
    droplet_ip = module.do_droplet[0].droplet_ip
    providers = {
        cloudflare.child = cloudflare.parent
    }
    depends_on = [module.do_droplet]
}

module gh_secrets {
    count = var.cloud_provider == "digitalocean" ? 1 : 0
    source = "../../github/secrets"
    droplet_ip = module.do_droplet[0].droplet_ip
    providers = {
        github.child = github.parent
    }
    depends_on = [module.do_droplet]
}