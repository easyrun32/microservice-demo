resource "aws_s3_bucket" "classifieds-app" {
  bucket = "microservices-demo-classifieds-app"
  acl    = "public-read"
  policy = <<POLICY
{
  "Statement": [
    {
      "Resource": "arn:aws:s3:::microservices-demo-classifieds-app/*",
      "Action": "s3:GetObject",
      "Principal": "*",
      "Effect": "Allow",
      "Sid": "PublicRead"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
  website{
      index_document = "index.html"
  }
}