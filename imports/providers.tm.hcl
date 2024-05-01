generate_hcl "_generated_providers.tf" {
  content {
    terraform {
      required_version = ">= 1.4.6"

      required_providers {
        proxmox = {
          source  = "bpg/proxmox"
          version = "0.55.0"
        }
      }
    }
  }
}

generate_hcl "credentials.tf" {
  content {
    provider "proxmox" {
      endpoint  = global.pve.url
      api_token = global.credentials.token
      insecure  = true

      ssh {
        agent = true
      }
    }
  }
}