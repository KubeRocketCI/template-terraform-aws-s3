variable "region" {
  description = "The AWS region to deploy the cluster into, e.g. eu-central-1"
  type        = string
}

variable "role_name" {
  description = "The AWS IAM role name for EKS cluster deployment"
  type        = string
  default     = "S3AccessRole"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to apply to all resources"
  type        = map(any)
  default     = {}
}

variable "iam_permissions_boundary_policy_arn" {
  description = "ARN for permission boundary to attach to IAM policies"
  type        = string
  default     = "arn:aws:iam::0123456789:policy/eo_role_boundary"
}


variable "oidc_provider_id" {
  description = "The ARN of the OIDC Provider"
  type        = string
  default     = "oidc.eks.eu-central-1.amazonaws.com/id/0123456789123456789"
}
