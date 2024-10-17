## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.5.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.72.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.s3_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.s3_access_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.s3_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.s3_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket | `string` | `""` | no |
| <a name="input_iam_permissions_boundary_policy_arn"></a> [iam\_permissions\_boundary\_policy\_arn](#input\_iam\_permissions\_boundary\_policy\_arn) | ARN for permission boundary to attach to IAM policies | `string` | `"arn:aws:iam::0123456789:policy/eo_role_boundary"` | no |
| <a name="input_oidc_provider_id"></a> [oidc\_provider\_id](#input\_oidc\_provider\_id) | The ARN of the OIDC Provider | `string` | `"oidc.eks.eu-central-1.amazonaws.com/id/0123456789123456789"` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region to deploy the cluster into, e.g. eu-central-1 | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The AWS IAM role name for EKS cluster deployment | `string` | `"S3AccessRole"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to apply to all resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_access_role_arn"></a> [s3\_access\_role\_arn](#output\_s3\_access\_role\_arn) | The ARN of the IAM role for S3 access |
