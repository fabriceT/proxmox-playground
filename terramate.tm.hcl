terramate {
  config {
    git {
      #default_remote    = "origin"
      #default_branch    = "main"
      check_untracked   = false
      check_uncommitted = false
      check_remote      = false
    }
  }
}

import {
  source = "./imports/lxc_instance.tm.hcl"
}

import {
  source = "./imports/providers.tm.hcl"
}


globals "pve" {
  node    = "pve"
  url     = "https://192.168.0.155:8006/"
  dns     = ["192.168.0.131", "9.9.9.9"]
  domain  = "aud.in"
  gateway = "192.168.0.1"
}

