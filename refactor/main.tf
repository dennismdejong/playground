resource "local_file" "oud_log" {
  filename = "${path.module}/logbestand.txt"
  content  = "Dit is de oorspronkelijke logtekst."
}

# moved {
#   from = local_file.oud_log
#   to   = local_file.nieuw_logboek
# }

# resource "local_file" "nieuw_logboek" {
#   filename = "${path.module}/logbestand.txt"
#   content  = "Dit is de oorspronkelijke logtekst."
# }