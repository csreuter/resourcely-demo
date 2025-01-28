# main.tf

resource "null_resource" "foo" {
  triggers = {
    foo = var.project
  }
}

resource "aws_s3_bucket" "resourcely-bucket_uiKHUAkpbvx6wzsY" {
  bucket = "resourcely-bucket"
}

resource "aws_s3_bucket_public_access_block" "resourcely-bucket_uiKHUAkpbvx6wzsY" {
  bucket                  = aws_s3_bucket.resourcely-bucket_uiKHUAkpbvx6wzsY.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-bucket_uiKHUAkpbvx6wzsY" {
  bucket = aws_s3_bucket.resourcely-bucket_uiKHUAkpbvx6wzsY.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-bucket_uiKHUAkpbvx6wzsY" {
  bucket = aws_s3_bucket.resourcely-bucket_uiKHUAkpbvx6wzsY.id

  versioning_configuration {
    status = "Enabled"
  }
}
