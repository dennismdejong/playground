variable "file_path" {
  description = "Het volledige pad inclusief de bestandsnaam waar het logbestand aangemaakt moet worden."
  type        = string
}

variable "file_content" {
  description = "De inhoud die in het logbestand moet worden geplaatst."
  type        = string
}