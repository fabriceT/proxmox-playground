
variable "datastore_id" {
  type    = string
  default = "local"
}

variable "node_name" {
  type    = string
  default = "pve"
}

variable "templates" {
  type = map(object({
    overwrite    = bool
    content_type = string
    source_file  = string
  }))

  default = {}
}
