variable "region" {
    default = "eu-west-2"
    description = "AWS region"
}
variable "access_key" { }
variable "secret_key" { }

variable "bucketname" {
    default = "atestbucket"
    description = "BucketName"
}

variable "dockerimage" {
    default = "mazishah/python-enumrate-api:0.1.0"
    description = "Python API to enumrate s3 objects"
  
}