locals {
  proxmox = yamldecode(sops_decrypt_file("${get_repo_root()}/secrets.yaml"))
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  required_version = ">= 1.4.6"

  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.73.0"
    }
  }
}

provider "proxmox" {
  endpoint   = "${local.proxmox.api_endpoint}"
  api_token       = "${local.proxmox.api_token}"
  insecure  = true

  ssh {
    agent = true
  }
}

EOF
}
