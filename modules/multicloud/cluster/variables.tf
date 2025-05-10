variable "cloud_provider" {
    type      = string
    default   = "digitalocean"

    validation {
        condition     = contains(["digitalocean"], var.cloud_provider)
        error_message = "Environment must to a valid cloud provider"
    }
}