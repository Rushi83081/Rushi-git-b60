🛠️ Terraform Workspaces Quick Guide

💡 What is a Terraform Workspace?
Terraform workspaces let you manage multiple environments (like dev, staging, prod) using the same configuration. Each workspace has its own state file, making it easy to isolate resources per environment.

```bash
terraform workspace new <name>
```
✨ Example: terraform workspace new prod

💡 Explanation: Creates a new workspace named prod. Useful for adding a new environment without affecting others.
```bash
terraform workspace select <name>
```
✨ Example: terraform workspace select default

💡 Explanation: Switches to an existing workspace, e.g., default. All subsequent Terraform commands will now affect this workspace.
```bash
terraform workspace list
```
✨ Explanation: Lists all available workspaces in the current Terraform configuration and highlights the active one.
```bash
terraform workspace show
```
✨ Explanation: Shows the name of the currently active workspace, helping you confirm which environment you’re working in.
