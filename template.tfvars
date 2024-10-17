# -- e.g eu-central-1
region = "<AWS_REGION>" # mandatory

iam_permissions_boundary_policy_arn = "arn:aws:iam::<AWS_ACCOUNT_ID>:policy/eo_role_boundary" # mandatory

# -- Kaniko role variables
oidc_provider_id = "oidc.eks.<AWS_REGION>.amazonaws.com/id/0123456789123456789"

bucket_name = "s3-stores-<AWS_ACCOUNT_ID>"

tags = {
    "<NAME>" = "<VALUE>"
    "<NAME>" = "<VALUE>"
}

role_name = "S3AccessRole"
