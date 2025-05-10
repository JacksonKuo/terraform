module springboot_app {
    source = "../../modules/multicloud/cluster"
    providers = {
        digitalocean.parent = digitalocean
        github.parent = github
    }
    cloud_provider = "digitalocean"
}
