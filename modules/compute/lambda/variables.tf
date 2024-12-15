variable "name" {
  description = "The name of the Lambda"
  type = string
}

variable "role_policy" {
  description = "The IAM policy document to attach to the Lambda role"
  type = string
}
