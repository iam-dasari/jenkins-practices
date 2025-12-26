terraform {
    required_providers {
    # The "local" provider is a built-in provider and doesn't usually
    # require explicit source/version in modern Terraform, but it's good practice.
    local = {
        source = "hashicorp/local"
        version = "2.4.0" # Use a compatible version
    }
}
}

variable "message" {
    description = "A message to be written to the local file"
    type        = string
    default     = "Hello from the Jenkins pipeline!"
}
resource "local_file" "example" {
    filename = "${path.module}/output.txt"
    content  = var.message
}

output "file_path" {
    value = local_file.example.filename
}
