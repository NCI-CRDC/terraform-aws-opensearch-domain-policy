resource "aws_opensearch_domain_policy" "this" {
  domain_name     = var.domain_name
  access_policies = data.aws_iam_policy_document.this.json
}

data "aws_iam_policy_document" "this" {

  statement {
    effect = "Allow"
    actions = [
      "es:ESHttpPut",
      "es:ESHttpPost",
      "es:ESHttpPatch",
      "es:ESHttpHead",
      "es:ESHttpGet",
      "es:ESHttpDelete"
    ]
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    resources = ["${var.domain_arn}/*"]
  }
}
