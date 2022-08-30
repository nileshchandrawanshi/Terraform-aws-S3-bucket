
resource "aws_s3_bucket" "bucketsss" {
  bucket = "namenileshhh"
  acl    = "private"
  tags = {
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_object" "object" {
  bucket     = "namenileshhh"
  key        = "download"
  source     = "/root/terraform_s3/download.txt"
  depends_on = [aws_s3_bucket.bucketsss]
}

