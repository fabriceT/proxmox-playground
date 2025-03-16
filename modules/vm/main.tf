resource "proxmox_virtual_environment_vm" "wm_ubuntu" {

  node_name = var.pve_node
  started   = var.started
  on_boot   = var.on_boot

  name            = var.name
  description     = var.description
  tags            = var.tags
  keyboard_layout = var.keyboard_layout
  machine         = var.machine

  vga {
    type   = var.vga.driver
    memory = var.vga.memory
  }

  disk {
    #datastore_id = "local-lvm"
    file_format = var.disk.file_format
    interface   = var.disk.interface
    size        = var.disk.size
  }

  network_device {
    bridge = var.network_bridge
  }

  operating_system {
    type = var.os_type
  }

  cdrom {
    file_id = var.cdrom_file_id
  }

  // TODO:
  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    #     user_account {
    #       keys     = <key>
    #       password = random_password.ubuntu_vm_password.result
    #       username = "ubuntu"
    #     }

    #     user_data_file_id = proxmox_virtual_environment_file.cloud_config.id
  }

}
