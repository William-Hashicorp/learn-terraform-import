# Configure docker provider
#
# https://www.terraform.io/docs/providers/docker/index.html
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.16"
    }
  }
# required_version = ">= 0.14"
}

/* provider "docker" {
  version = "~> 2.7"
  host="npipe:////.//pipe//docker_engine"
  
  } */
provider "docker" {

  host = "unix:///var/run/docker.sock"
}
