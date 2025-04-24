# Fetch the AWS account ID
data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "lambda_artifacts" {
  bucket = "${data.aws_caller_identity.current.account_id}-lambda-artifacts"
  tags = {
    Name = "lambda-artifacts"
  }
}