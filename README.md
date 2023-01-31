# Terraform AWS Module Template
A repository template for creating reusable terraform modules to support infrastructure as code capabilities for workloads running on AWS. 

# Overview

# Usage 

<!-- BEGIN_TF_DOCS -->
# Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

# Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

# Modules

No modules.

# Resources

| Name | Type |
|------|------|
| [aws_opensearch_domain_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/opensearch_domain_policy) | resource |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_arn"></a> [domain\_arn](#input\_domain\_arn) | the opensearch domain arn for the instance to which this policy is attached | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | the opensearch domain name for the instance to which this policy is attached | `string` | n/a | yes |
| <a name="input_policy_actions"></a> [policy\_actions](#input\_policy\_actions) | the iam actions to allow on the opensearch domain policy | `set(string)` | <pre>[<br>  "es:ESHttpPut",<br>  "es:ESHttpPost",<br>  "es:ESHttpPatch",<br>  "es:ESHttpHead",<br>  "es:ESHttpGet",<br>  "es:ESHttpDelete"<br>]</pre> | no |

# Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_policies"></a> [access\_policies](#output\_access\_policies) | n/a |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->
