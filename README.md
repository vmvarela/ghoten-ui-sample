# Ghoten UI Sample

This is a minimal repo so Ghoten UI can detect a project and workspace via `.ghoten` configs.

## Structure
- `.ghoten/project.yaml`: project metadata and backend config
- `.ghoten/workspaces/dev.yaml`: single `dev` workspace definition

## Backend
Uses ORAS with GHCR:
- `ghcr.io/vmvarela/tf-state.ghoten-ui-sample:dev`

Feel free to add Terraform files under this repo; the presence of the `.ghoten` configs is enough for discovery.
