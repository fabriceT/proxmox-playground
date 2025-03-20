variable "pve_node" {
  type    = string
  default = "pve"
}

variable "started" {
  type    = bool
  default = false
}

variable "on_boot" {
  type    = bool
  default = false
}

variable "name" {
  type = string
}

variable "tags" {
  type    = set(string)
  default = ["iac"]
}

variable "description" {
  type    = string
  default = "a random vm"
}

variable "keyboard_layout" {
  type    = string
  default = "fr"
}

variable "machine" {
  type    = string
  default = "q35"
  # TODO: document
}

variable "vga" {
  type = object({
    driver = string
    memory = number

  })
  default = {
    driver = "qxl"
    memory = 4
  }
}

variable "disks" {
  type = map(object({
    size        = number
    file_format = optional(string)
  }))
  default = {
    virtio0 = {
      size        = 10
      file_format = "raw"
    }
  }
}

variable "network_bridge" {
  type    = string
  default = "vmbr0"
}

variable "os_type" {
  type    = string
  default = "l26"
  # TODO: document
}

variable "cdrom_file_id" {
  type    = string
  default = null
}
