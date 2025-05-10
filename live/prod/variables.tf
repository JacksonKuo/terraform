variable "gh_token" {
  type      = string
  sensitive = true
}

variable "gh_owner" {
  type      = string
  default = "JacksonKuo"
  description = "The owner of the GitHub repository"
}

variable "do_token" {
  type      = string
  sensitive = true
}

variable "cloud_provider" {
  type        = string
  default     = "digitalocean"
}