# Overview
Terraform project:
1. uses AWS S3 as backend to store Terraform state (see [main.tf](./main.tf))
2. creates AWS Role `GithubActionsRole` (see [roles.tf](./roles.tf)) to run GitHib workflow actions

GitHub workflow action [terraform.yml](./.github/workflows/terraform.yml) uses [aws-actions/configure-aws-credentials](https://github.com/aws-actions/configure-aws-credentials/tree/v4/) to assume `GithubActionsRole` that trusts [GitHub’s OIDC identity provider](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services#adding-the-identity-provider-to-aws).