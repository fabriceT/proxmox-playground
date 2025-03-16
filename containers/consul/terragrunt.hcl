terraform {
  source = "${get_repo_root()}/modules/containers"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

dependency "templates" {
  config_path = "${get_repo_root()}/templates"

  mock_outputs = {
    id = "pve:local/mock-template-output"
  }
}

inputs = {
  containers = {
    node1 = {
      vm_id            = 111
      tags             = ["ubuntu", "consul-server"]
      ip_address       = "192.168.0.211/24"
      mac_address      = "BC:24:11:0C:B2:A1"
      template_file_id = dependency.templates.outputs.templates.ubuntu2204.id
    },
    node2 = {
      vm_id            = 112
      tags             = ["ubuntu", "consul-client"]
      ip_address       = "192.168.0.212/24"
      mac_address      = "BC:24:11:0C:B2:A2"
      template_file_id = dependency.templates.outputs.templates.ubuntu2204.id
    },
    node3 = {
      vm_id            = 113
      tags             = ["ubuntu", "consul-client"]
      ip_address       = "192.168.0.213/24"
      mac_address      = "BC:24:11:0C:B2:A3"
      template_file_id = dependency.templates.outputs.templates.ubuntu2204.id
    }
  }
}
