# 1. Define the Input Variable
variable "user_greeting" {
  description = "The message to display in the output"
  type        = string
  default     = "Hello from Terraform!" # This is used if no value is provided
}

variable "names" {
  description = "The message to display in the output"
  type        = string
  default     = "NA"
}

# 2. Define Local Variables (using the input variable)
locals {
  project_name = "Internal-Automation"
  
  # Combining the input variable with a local constant
  full_message = "${var.names} - ${var.user_greeting} Welcome to ${local.project_name}."
}

# 3. Define the Output
output "final_message" {
  value = local.full_message
}

# 1. The Resource: Create a local text file
resource "local_file" "hello_world" {
  filename = "${path.module}/hello.txt"
  content  = "This file was created by Terraform on my Mac!"
}

# 2. Output the location
output "file_path" {
  value = local_file.hello_world.filename
}
resource "local_file" "hello_world1" {
  filename = "${path.module}/hello.txt"
  content  = "This file was created by Terraform on my Mac!"
}

resource "aws_s3_bucket" "my_simple_bucket" {
  bucket = "my-unique-bucket-name-2026-sandip" # Must be globally unique

  tags = {
    Name        = "My Simple Bucket"
    Environment = "Dev"
  }
}