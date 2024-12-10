variable "workspace_name" {
  description = "TFC workspace name"
  type        = string
  default     = "workspace1" # Replace with your TFC workspace name
}

variable "org_name" {
  description = "TFC orgname"
  type        = string
  default     = "hello-org" # Replace with your actual TFC org name
}

variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
  default     = "xxx" # Replace with your actual access key ID
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
  default     = "xxxxxxxxxx" # Replace with your actual secret access key
}

variable "hcp_client_id" {
  description = "HCP Client ID"
  type        = string
  default     = "xxxxxxxxxx" # Replace with your actual HCP Client ID
}

variable "hcp_client_secret" {
  description = "HCP Client Secret"
  type        = string
  default     = "xxxxxxxxxx" # Replace with your actual HCP Client Secret
}
