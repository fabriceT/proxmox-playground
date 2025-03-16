resource "proxmox_virtual_environment_container" "test" {
  for_each = var.containers

  node_name = var.pve_node
  vm_id     = each.value.vm_id

  unprivileged  = true
  start_on_boot = false

  tags = each.value.tags

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
    hostname = each.key
    dns {
      domain  = var.dns_domain
      servers = var.dns_server
    }

    ip_config {
      ipv4 {
        address = each.value.ip_address
        gateway = var.gateway
      }
    }

    user_account {
      keys = [
        file("~/.ssh/id_rsa.pub")
      ]
    }
  }

  network_interface {
    bridge      = "vmbr0"
    enabled     = true
    firewall    = false
    mac_address = each.value.mac_address
    name        = "eth0"
  }

  memory {
    dedicated = 1024
    swap      = 512
  }

  operating_system {
    template_file_id = each.value.template_file_id
    type             = "ubuntu" # TODO
  }
}
