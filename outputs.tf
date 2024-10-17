output "s3_access_role_arn" {
  value       = aws_iam_role.s3_access_role.arn
  description = "The ARN of the IAM role for S3 access"
}
