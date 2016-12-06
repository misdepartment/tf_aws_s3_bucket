variable "bucket_name" {}
variable "bucket_acl" {
  default = "private"
}
variable "use_lifecycles" {
  default = false
}
variable "lifecycle_id" {
  default = "life"
}
variable "lifecycle_prefix" {
  default = ""
}
variable "transition_days" {
  default = 0
}
variable "transition_class" {
  default = "GLACIER"
}
variable "expiration_days" {
  default = 0
}
