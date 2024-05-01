resource "proxmox_virtual_environment_file" "ubuntu2204_lxc_template" {
  content_type = "vztmpl"
  datastore_id = "local"
  node_name    = "pve"
  overwrite    = "false"
  source_file {
    path = "http://download.proxmox.com/images/system/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
  }
}

resource "proxmox_virtual_environment_file" "alma9_lxc_template" {
  content_type = "vztmpl"
  datastore_id = "local"
  node_name    = "pve"
  overwrite    = "false"
  source_file {
    path = "http://download.proxmox.com/images/system/almalinux-9-default_20221108_amd64.tar.xz"
  }
}
