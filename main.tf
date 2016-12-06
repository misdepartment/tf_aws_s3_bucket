resource "aws_s3_bucket" "bucket" {
    bucket = "${var.bucket_name}"
    acl = "${var.bucket_acl}"

    tags {
        Name = "${var.bucket_name}"
    }
}
