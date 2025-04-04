variable "do_token" {
  type      = string
  sensitive = true
}

variable "gh_token" {
  type      = string
  sensitive = true
}

variable "gh_owner" {
  type      = string
  default = "JacksonKuo"
  description = "The owner of the GitHub repository"
}

variable "droplet_name" {
  type        = string
  default = "debian-s-1vcpu-1gb-nyc1-01"
  description = "The name of the droplet to create"
}
