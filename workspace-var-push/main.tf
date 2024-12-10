data "tfe_workspace" "my_workspace" {
  name         = var.workspace_name
  organization = var.org_name
}

resource "tfe_variable" "aws_access_key_id" {
  workspace_id = data.tfe_workspace.my_workspace.id
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  sensitive    = true
  description  = "AWS Access Key ID for authentication."
}

resource "tfe_variable" "aws_secret_access_key" {
  workspace_id = data.tfe_workspace.my_workspace.id
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  sensitive    = true
  description  = "AWS Secret Access Key for authentication."
}

resource "tfe_variable" "hcp_client_id" {
  workspace_id = data.tfe_workspace.my_workspace.id
  key          = "HCP_CLIENT_ID"
  value        = var.hcp_client_id
  category     = "env"
  sensitive    = true
  description  = "HCP Client ID for authentication."
}

resource "tfe_variable" "hcp_client_secret" {
  workspace_id = data.tfe_workspace.my_workspace.id
  key          = "HCP_CLIENT_SECRET"
  value        = var.hcp_client_secret
  category     = "env"
  sensitive    = true
  description  = "HCP Client Secret for authentication."
}
