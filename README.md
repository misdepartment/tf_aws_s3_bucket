s3 bucket terraform module
=======================

A terraform module for creating an s3 bucket

Module Input Variables
----------------------

- `bucket_name` - The name to give the bucket
- `bucket_acl` - ACL for bucket. Defaults to "private"
- `lifecycle_id` - Internal name to give the lifecycle event. Defaults to "life"
- `lifecycle_prefix` - S3 object prefix to apply lifecycle event to. Defaults to empty string for whole bucket.
- `use_lifecycles` - Enable lifecycles. Defaults to 'false'.
- `transition_days` - Number of days for transition event. Defaults to '0'.
- `transition_class` - Class of storage to transition to. Defaults to 'GLACIER'.
- `expiration_days` - Number of days before deleting object from bucket. Defaults to '0'.

Usage
-----

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. `main.tf`

```
module "s3_bucket" {
    source = "github.com/misdepartment/tf_aws_s3_bucket"
    
    bucket_name = "${var.s3_bucket_name}"
    use_lifecycles = true
    transition_days = "${var.s3_bucket_transition_days}"
    expiration_days = "${var.s3_bucket_expiration_days}"
}
```

Authors
=======

Created and maintained by `thepastelsuit`
