
module springboot_app {
    source = "../../modules/multicloud/cluster"
    providers = {
        digitalocean = digitalocean
        github = github
    }
    cloud_provider = "digitalocean"
}
