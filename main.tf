terraform {
  required_version = ">= 1.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  backend "oras" {
    repository = "ghcr.io/vmvarela/tf-state.ghoten-ui-sample:dev"
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "github_repository" "example" {
  name            = var.repo_name
  description     = "Example repository created by Terraform"
  visibility      = "private"
  has_discussions = false
  has_projects    = false
  has_wiki        = false
}

output "repository_url" {
  description = "The URL of the created repository"
  value       = github_repository.example.html_url
}

output "repository_id" {
  description = "The ID of the created repository"
  value       = github_repository.example.id
}
