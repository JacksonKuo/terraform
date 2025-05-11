module springboot_app {
    source = "../../modules/multicloud/cluster"
    providers = {
        digitalocean.parent = digitalocean
        github.parent = github
        cloudflare.parent = cloudflare
    }
    cloud_provider = "digitalocean"
}
