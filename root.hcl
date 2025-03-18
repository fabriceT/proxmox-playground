locals {
  proxmox = yamldecode(sops_decrypt_file("${get_repo_root()}/secrets.yaml"))
}

generate "provider" {
  path      = "secrets.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
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
