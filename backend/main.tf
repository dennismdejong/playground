resource "local_file" "demo_file" {
  filename = "${path.module}/demo/voorbeeld.txt"

  content  = "Dit is een demonstratiebestand aangemaakt door Terraform. Het tijdstip is ${timestamp()}"

  file_permission = "0600"
}