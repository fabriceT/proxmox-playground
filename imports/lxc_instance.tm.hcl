generate_hcl "_generated_instances.tf" {
  content {
    tm_dynamic "resource" {
      for_each = global.instances
      iterator = instance

      labels = ["proxmox_virtual_environment_container", instance.key]

      content {
        description = "Managed by Terraform"

        node_name     = global.pve.node
        vm_id         = instance.value.vm_id
        unprivileged  = true
        start_on_boot = false

        tags = instance.value.tags

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
          hostname = instance.key
          dns {
            domain  = global.pve.domain
            servers = global.pve.dns
          }

          ip_config {
            ipv4 {
              address = instance.value.address
              gateway = global.pve.gateway
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
          mac_address = instance.value.mac_address
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
    }
  }
}
