# main.tf

resource "null_resource" "foo" {
  triggers = {
    foo = var.project
  }
}

resource "aws_s3_bucket" "resourcely-bucket_a8VWjRTisLmJmXgt" {
  bucket = "resourcely-bucket"
}

resource "aws_s3_bucket_public_access_block" "resourcely-bucket_a8VWjRTisLmJmXgt" {
  bucket                  = aws_s3_bucket.resourcely-bucket_a8VWjRTisLmJmXgt.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-bucket_a8VWjRTisLmJmXgt" {
  bucket = aws_s3_bucket.resourcely-bucket_a8VWjRTisLmJmXgt.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-bucket_a8VWjRTisLmJmXgt" {
  bucket = aws_s3_bucket.resourcely-bucket_a8VWjRTisLmJmXgt.id

  versioning_configuration {
    status = "Enabled"
  }
}
