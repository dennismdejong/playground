variable "file_path" {
  description = "Het volledige pad inclusief de bestandsnaam waar het logbestand aangemaakt moet worden."
  type        = string

  validation {
    condition     = endswith(var.file_path, ".log")
    error_message = "De bestandsnaam in file_path moet eindigen op '.log'."
  }
}

variable "file_content" {
  description = "De inhoud die in het logbestand moet worden geplaatst."
  type        = string

  validation {
    condition     = length(var.file_content) > 0
    error_message = "De inhoud van het logbestand mag niet leeg zijn."
  }
}