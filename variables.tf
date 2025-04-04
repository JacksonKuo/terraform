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
}

variable "droplet_name" {
  type        = string
  description = "The name of the droplet to query"
}