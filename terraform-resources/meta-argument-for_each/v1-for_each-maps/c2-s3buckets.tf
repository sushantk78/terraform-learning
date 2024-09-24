# Create S3 Buckets per environment with for_each and maps
resource "aws_s3_bucket" "mys3bucket" {
  # for_each-Meta-Argument
  for_each = {
    dev  = "my-dapp-bucket-8u188127"
    qa   = "my-qapp-bucket-88w7wgh19"
    stag = "my-sapp-bucket-q9ww8qb0qwi1w"
    prod = "my-papp-bucket-hbhq8q7w81wu1927h"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    Environment = each.key
    bucketname  = each.value
    eachvalue   = each.value
  }
}