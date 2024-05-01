// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "proxmox_virtual_environment_container" "node1" {
  description   = "Managed by Terraform"
  node_name     = "pve"
  start_on_boot = false
  tags = [
    "ubuntu",
    "consul-server",
  ]
  unprivileged = true
  vm_id        = 111
  console {
    enabled   = true
    tty_count = 1
    type      = "tty"
  }
  disk {
    datastore_id = "local-lvm"
    size         = 8
  }
  initialization {
    hostname = "node1"
    dns {
      domain = "aud.in"
      servers = [
        "192.168.0.131",
        "9.9.9.9",
      ]
    }
    ip_config {
      ipv4 {
        address = "192.168.0.211/24"
        gateway = "192.168.0.1"
      }
    }
    user_account {
      keys = [
        file("~/.ssh/id_rsa.pub"),
      ]
    }
  }
  network_interface {
    bridge      = "vmbr0"
    enabled     = true
    firewall    = false
    mac_address = "BC:24:11:0C:B2:A1"
    name        = "eth0"
  }
  memory {
    dedicated = 1024
    swap      = 512
  }
  operating_system {
    template_file_id = proxmox_virtual_environment_file.ubuntu2204_lxc_template.id
    type             = "ubuntu"
  }
}
resource "proxmox_virtual_environment_container" "node2" {
  description   = "Managed by Terraform"
  node_name     = "pve"
  start_on_boot = false
  tags = [
    "ubuntu",
    "consul-client",
  ]
  unprivileged = true
  vm_id        = 112
  console {
    enabled   = true
    tty_count = 1
    type      = "tty"
  }
  disk {
    datastore_id = "local-lvm"
    size         = 8
  }
  initialization {
    hostname = "node2"
    dns {
      domain = "aud.in"
      servers = [
        "192.168.0.131",
        "9.9.9.9",
      ]
    }
    ip_config {
      ipv4 {
        address = "192.168.0.212/24"
        gateway = "192.168.0.1"
      }
    }
    user_account {
      keys = [
        file("~/.ssh/id_rsa.pub"),
      ]
    }
  }
  network_interface {
    bridge      = "vmbr0"
    enabled     = true
    firewall    = false
    mac_address = "BC:24:11:0C:B2:A2"
    name        = "eth0"
  }
  memory {
    dedicated = 1024
    swap      = 512
  }
  operating_system {
    template_file_id = proxmox_virtual_environment_file.ubuntu2204_lxc_template.id
    type             = "ubuntu"
  }
}
resource "proxmox_virtual_environment_container" "node3" {
  description   = "Managed by Terraform"
  node_name     = "pve"
  start_on_boot = false
  tags = [
    "ubuntu",
    "consul-client",
  ]
  unprivileged = true
  vm_id        = 113
  console {
    enabled   = true
    tty_count = 1
    type      = "tty"
  }
  disk {
    datastore_id = "local-lvm"
    size         = 8
  }
  initialization {
    hostname = "node3"
    dns {
      domain = "aud.in"
      servers = [
        "192.168.0.131",
        "9.9.9.9",
      ]
    }
    ip_config {
      ipv4 {
        address = "192.168.0.213/24"
        gateway = "192.168.0.1"
      }
    }
    user_account {
      keys = [
        file("~/.ssh/id_rsa.pub"),
      ]
    }
  }
  network_interface {
    bridge      = "vmbr0"
    enabled     = true
    firewall    = false
    mac_address = "BC:24:11:0C:B2:A3"
    name        = "eth0"
  }
  memory {
    dedicated = 1024
    swap      = 512
  }
  operating_system {
    template_file_id = proxmox_virtual_environment_file.ubuntu2204_lxc_template.id
    type             = "ubuntu"
  }
}
