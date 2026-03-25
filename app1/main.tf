# 1. Define Local Variables
locals {
  project_name = "Internal-Automation"
  environment  = "Development"
  
  # Combining locals into a string
  tag_line = "Welcome to the ${local.project_name} - ${local.environment} stack."
}

# 2. Define an Output
output "greeting" {
  description = "A simple greeting message"
  value       = local.tag_line
}

output "status" {
  value = "Infrastructure initialized successfully."
}