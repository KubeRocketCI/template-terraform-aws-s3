# -- e.g eu-central-1
region = "eu-central-1" # mandatory

iam_permissions_boundary_policy_arn = "arn:aws:iam::0123456789:policy/eo_role_boundary" # mandatory

# -- Kaniko role variables
oidc_provider_id = "oidc.eks.eu-central-1.amazonaws.com/id/0123456789123456789"

bucket_name = "nexus-s3-blob-stores-0123456789"

tags = {
    "Environment" = "dev"
    "ManagedBy" = "Terraform"
}

role_name = "S3AccessRole"
