terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

import {
  to = local_file.bestaande_log
  id = "${path.module}/import_test.log"
}

resource "local_file" "bestaande_log" {
  filename = "${path.module}/import_test.log"
  content  = "Het bestand is nu geïmporteerd en deze is de nieuwe gewenste inhoud volgens Terraform."
}