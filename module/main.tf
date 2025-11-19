terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

module "app_log" {
  source = "./modules/log_creator"
  
  file_path    = "${path.module}/logs/app_status.log"
  file_content = "Applicatie gestart op ${timestamp()}"
}


module "db_log" {
  source = "./modules/log_creator"
  
  file_path    = "${path.module}/logs/db_check.log"
  file_content = "Database verbinding gecontroleerd."
}

output "app_log_file_id" {
  value = module.app_log.file_id
}