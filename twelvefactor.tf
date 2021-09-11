terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
    google = {
      source = "hashicorp/google"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 0.13"
}

resource "docker_image" "rearc" {
  name = "rearc"
  build {
    path = "."
    tag  = ["rearc:TwelveFactor"]
    label = {
      author : "Stephen Reilly"
    }
  }
}

# Create a container
resource "docker_container" "rearc" {
  image = docker_image.rearc.latest
  name  = "rearc"
  ports {
    internal = 3000
    external = 80
  }
}
