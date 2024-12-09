#Bucket S3 challenge 1
resource "aws_s3_bucket" "challengue_bucket" {
  bucket = "backup-us-east-1-471112631123"

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
#Versionamiento
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.challengue_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
