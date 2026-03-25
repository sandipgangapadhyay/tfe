# 1. Define the Input Variable
variable "user_greeting" {
  description = "The message to display in the output"
  type        = string
  default     = "Hello from Terraform!" # This is used if no value is provided
}

variable "name" {
  description = "The message to display in the output"
  type        = string
  default     = "NA"
}

# 2. Define Local Variables (using the input variable)
locals {
  project_name = "Internal-Automation"
  
  # Combining the input variable with a local constant
  full_message = "${var.name} - ${var.user_greeting} Welcome to ${local.project_name}."
}

# 3. Define the Output
output "final_message" {
  value = local.full_message
}