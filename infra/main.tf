# Terraform version for Docker
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = ">= 3.0.2"
    }
  }
}

# Configurate docker provider with a local host
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# docker_image resource called "build" targeting the Dockerfile
resource "docker_image" "build" {
  name          = "docker.io/terraform-docker:latest"
  build {
        context = "../app"
        dockerfile = "Dockerfile"
  }
}

# docker_container resource called "container" to deploy the container from the "build" image
resource "docker_container" "container" {
  image = docker_image.build.name # Use of the image built earlier
  name  = "terraform-docker-container"
  ports {
    internal = 8000
    external = 8000
  }
}
