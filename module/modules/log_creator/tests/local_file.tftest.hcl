# Variabelen die we gebruiken voor de test
variables {
  file_path    = "test_output.log"
  file_content = "Dit is een testbericht"
}

# De eigenlijke testrun
run "verify_file_creation" {
  command = apply

  # Controleer of de output overeenkomt met wat we verwachten
  assert {
    condition     = output.file_id != ""
    error_message = "De file_id output is leeg, het bestand is mogelijk niet aangemaakt."
  }

  # Controleer of de permissies correct zijn gezet
  assert {
    condition     = local_file.log.file_permission == "0600"
    error_message = "De bestandspermissies zijn niet correct ingesteld op 0600." 
  }
}

run "expect_failure_on_invalid_extension" {
  command = plan

  variables {
    file_path    = "fout_bestand.txt" # Dit zou moeten falen
    file_content = "test"
  }

  # We verwachten dat dit specifieke run-blok faalt
  expect_failures = [
    var.file_path,
  ]
}

run "expect_failure_on_empty_content" {
  command = plan

  variables {
    file_path    = "test.log"
    file_content = "" # Dit is nu ongeldig
  }

  expect_failures = [
    var.file_content,
  ]
}