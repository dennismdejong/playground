terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

resource "local_file" "demo_file" {
  filename = "${path.module}/demo/voorbeeld.txt"

  content  = "Dit is een demonstratiebestand aangemaakt door Terraform. Het tijdstip is ${timestamp()}"

  file_permission = "0600"
}

# output "bestands_inhoud" {
#   value = local_file.demo_file.content
#   description = "De inhoud van het lokaal gelezen bestand."
# }

# data "local_file" "input_data" {
#   filename = "${path.module}/input.txt"
# }

# output "bestands_inhoud" {
#   value = data.local_file.input_data.content
#   description = "De inhoud van het lokaal gelezen bestand."
# }