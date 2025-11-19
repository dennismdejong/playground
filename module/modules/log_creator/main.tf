resource "local_file" "log" {
  filename        = var.file_path
  content         = var.file_content
  file_permission = "0600"
}