# Upload an object
resource "aws_s3_object" "my-objects" {
 for_each = fileset("./filestoupload/", "*")
 
  bucket = aws_s3_bucket.my-bucket.id
  key    = each.value
  source = "./filestoupload/${each.value}"
  etag = filemd5("./filestoupload/${each.value}")
}# Upload an object