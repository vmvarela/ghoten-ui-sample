variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub organization or user name"
  type        = string
}

variable "repo_name" {
  description = "Name of the repository to create"
  type        = string
  default     = "example-repo"
}
