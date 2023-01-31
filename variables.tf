variable "domain_name" {
  type        = string
  description = "the opensearch domain name for the instance to which this policy is attached"
}

variable "domain_arn" {
  type        = string
  description = "the opensearch domain arn for the instance to which this policy is attached"
}

variable "policy_actions" {
  type        = set(string)
  description = "the iam actions to allow on the opensearch domain policy"
  default = [
    "es:ESHttpPut",
    "es:ESHttpPost",
    "es:ESHttpPatch",
    "es:ESHttpHead",
    "es:ESHttpGet",
    "es:ESHttpDelete"
  ]
}