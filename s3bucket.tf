resource "aws_s3_bucket" "my-bucket" {
  bucket         = var.bucketname
  force_destroy  = "false"
  
  lifecycle {
    ignore_changes = [tags, tags_all]
  }

}
