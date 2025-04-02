variable "do_token" {
  type      = string
  sensitive = true
}

variable "droplet_name" {
  type        = string
  description = "The name of the droplet to query"
}