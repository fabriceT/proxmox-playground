terraform {
  source = "${get_repo_root()}/modules/vm"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name        = "test.aud.in"
  description = "some module test"
}
