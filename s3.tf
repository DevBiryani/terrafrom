# create an S3 bucket
resource "aws_s3_bucket" "my_bucket1" {
  bucket = "myuniquebucket-aryan-singh-2025"

  tags = {
    Name        = "MyBucket"
    Environment = "Development"
  }
}

# create another S3 bucket
resource "aws_s3_bucket" "my_bucket2" {
  bucket = "mytestbucket-aryan-singh-2025"

  tags = {
    Name        = "My bucket"
    Environment = "Testing"
  }
}
