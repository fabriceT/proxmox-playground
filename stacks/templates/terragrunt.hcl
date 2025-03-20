terraform {
  source = "${get_repo_root()}/modules/templates"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  datastore_id = "local"
  node_name    = "pve"

  templates = {
    almalinux9 = {
      overwrite    = false
      content_type = "vztmpl"
      source_file  = "http://download.proxmox.com/images/system/almalinux-9-default_20221108_amd64.tar.xz"
    }
    ubuntu2204 = {
      overwrite    = false
      content_type = "vztmpl"
      source_file  = "http://download.proxmox.com/images/system/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
    }
    ubuntu2404 = {
      overwrite    = false
      content_type = "vztmpl"
      source_file  = "http://download.proxmox.com/images/system/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    }
  }
}
