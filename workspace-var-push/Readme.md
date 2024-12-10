# Terraform Cloud Workspace Variable Configuration

This Terraform configuration creates sensitive environment variables in a specific **Terraform Cloud workspace**. These variables are used for authenticating with AWS and HashiCorp Cloud Platform (HCP). The variables are stored as sensitive, ensuring they are not displayed in plain text.

## Configuration Overview

- **AWS Credentials**: Sets up `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
- **HCP Credentials**: Sets up `HCP_CLIENT_ID` and `HCP_CLIENT_SECRET`.
- The variables are stored in a Terraform Cloud workspace and are marked as sensitive.

## Prerequisites

- Terraform Cloud account
- A workspace created in Terraform Cloud
- Terraform CLI installed on your local machine

## Setup

### Variables

The following variables need to be configured:

- `workspace_name`: The name of your Terraform Cloud workspace.
- `org_name`: The name of your Terraform Cloud organization.
- `aws_access_key_id`: Your AWS Access Key ID.
- `aws_secret_access_key`: Your AWS Secret Access Key.
- `hcp_client_id`: Your HCP Client ID.
- `hcp_client_secret`: Your HCP Client Secret.


```
# Set GitHub OAuth Token (classic) Full Repo Access
export TF_VAR_aws_access_key_id="AKxxxxxx"
export TF_VAR_aws_secret_access_key="Qxxxxxxxxx"

# Set Terraform Cloud API Token
export TF_VAR_hcp_client_id="Rxxxxxx"
export TF_VAR_hcp_client_secret="7xxxxxx"

## Check exproted token
$ export | grep -i aws
$ export | grep -i hcp
```

## Another way is export token using .envrc
Step 1: Create a .envrc file
```
# .envrc

# Set GitHub OAuth Token (classic) Full Repo Access
export TF_VAR_aws_access_key_id="AKxxxxxx"
export TF_VAR_aws_secret_access_key="Qxxxxxxxxx"

# Set Terraform Cloud API Token
export TF_VAR_hcp_client_id="Rxxxxxx"
export TF_VAR_hcp_client_secret="7xxxxxx"

```
## Activate and validate Env Variables
```
$ direnv allow
$ export | grep -i aws
$ export | grep -i hcp
```
### Example `terraform.tfvars`

You can create a `terraform.tfvars` file to specify the variable values:

```hcl
workspace_name       = "workspace01"       # Replace with your workspace name
org_name             = "my-custom-org"     # Replace with your organization name
