# Terraform module for creating an S3 bucket.

# See https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "aws_s3_bucket" "bucket" {
    bucket = "${var.bucket_name}"
    acl = "${var.bucket_acl}"

    tags {
        Name = "${var.bucket_name}"
    }
    
    lifecycle_rule {
        id = "${var.lifecycle_id}"
        prefix = "${var.lifecycle_prefix}"
        enabled = "${var.use_lifecycles}"

        transition {
            days = "${var.transition_days}"
            storage_class = "${var.transition_class}"
        }
        expiration {
            days = "${var.expiration_days}"
        }
    }
}
