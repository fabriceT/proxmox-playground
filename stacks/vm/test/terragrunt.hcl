terraform {
  source = "${get_repo_root()}/modules/vm"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name        = "test.aud.in"
  description = "some module test"
  user_admin = {
    name     = "ubuntu"
    password = "Azerty123"
  }
  disks = {
    virtio0 = {
      size = 10
    }
    virtio1 = {
      size = 5
    }
  }
}
