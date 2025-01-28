resource "aws_s3_bucket" "bucketcis" {
  bucket = "bucket-${random_string.sufijo.id}"


  tags = {
    Name        = "CIS-F-BUCKET"
    Environment = "Dev"
  }
}
resource "random_string" "sufijo" {

length = 8
 special = false
  upper = false
numeric = false

}

