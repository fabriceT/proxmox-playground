variable "pve_node" {
  description = "targeted pve node"
  type        = string
  default     = "pve"
}

variable "gateway" {
  default = "192.168.0.1"
  type    = string
}

variable "dns_domain" {
  default = "aud.in"
  type    = string
}

variable "dns_server" {
  default = ["192.168.0.131", "9.9.9.9"]
  type    = set(string)
}

variable "containers" {
  type = map(object({
    #hostname = string -> key
    vm_id            = number
    tags             = set(string)
    template_file_id = string
    ip_address       = string
    mac_address      = string
  }))
  default = {}
}
