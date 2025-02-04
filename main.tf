# main.tf file contains the resources and configurations that we use for the local providers

resource "local_file" "local_1" {
  filename = var.filename
  content = var.content
}