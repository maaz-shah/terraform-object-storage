
resource "docker_image" "enumerate" {
  name = var.dockerimage
}
# Start a container
resource "docker_container" "mypythonapi" {
  name  = "enumerate"
  image = docker_image.enumerate.image_id
  env = [ "ACCESS_KEY=${var.access_key}", "SECRET_KEY=${var.secret_key}", "S3_BUCKET_NAME=${var.bucketname}" ]
  ports {
     internal = "5000"
     external = "5000"
       }
}
