terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

#Variables
variable "digitalocean_ssh_key" {
  type = string
  default = "pc laburo"
}
variable "NAME" {
  type = string
  default = "droplet"
}
variable "IMAGE" {
  type = string
  default = "docker-20-04"
}
variable "DOMAIN" {
  type = string
  default = "mydomain.com"
}
variable "service_port" {
  type = number
  default = 80
}

# Configure the DigitalOcean Provider
variable "do_token" {}
provider "digitalocean" {
  token = var.do_token
}

# Data sources
data "digitalocean_ssh_key" "terraform" {
  name = var.digitalocean_ssh_key
}
data "digitalocean_regions" "available" {
  filter {
    key = "available"
    values = [
      "true"]
  }
}

# Resources
resource "digitalocean_droplet" "droplet" {
  image = var.IMAGE
  name = var.NAME
  region = data.digitalocean_regions.available.regions.0.slug
  size = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}
resource "digitalocean_record" "www" {
  domain = var.DOMAIN
  type = "A"
  name = var.NAME
  value = digitalocean_droplet.droplet.ipv4_address
  port = var.service_port
}

#Outputs
output "www" {
  value = "${digitalocean_record.www.name}.${digitalocean_record.www.domain}"
}