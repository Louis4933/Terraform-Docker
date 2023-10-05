# Spécifiez la version du provider Terraform pour Docker
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = ">= 3.0.2"
    }
  }
}

# Configurez le provider Docker avec un hôte local
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Déclarez une ressource docker_image appelée "build" ciblant le dossier contenant le Dockerfile
resource "docker_image" "build" {
  name          = "docker.io/Terraform-Docker:latest"
  build_context = "../app"  # Chemin vers le dossier contenant le Dockerfile
}

# Déclarez une ressource docker_container appelée "container" pour déployer le conteneur à partir de l'image "build"
resource "docker_container" "container" {
  image = docker_image.build.latest  # Utilisez l'image construite précédemment
  name  = "terraform-docker-container"        # Nom du conteneur
  ports {
    internal = 8000  # Port interne du conteneur
    external = 8000  # Port externe sur l'hôte
  }
}
