variable "tags" {
  description = "The tags to add to all the cloud resources"
  type        = list(string)
  default     = ["aws-api-resource-dynamodb"]
}

variable "region" {
  description = "The region where to deploy the infrastructure"
  type        = string
  default     = "eu-central-1"
}
