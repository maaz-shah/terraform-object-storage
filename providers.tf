terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.34.0"
    }
    docker = {
      source = "kreuzwerker/docker"
      version = "2.23.1"
    }
  
  }
}