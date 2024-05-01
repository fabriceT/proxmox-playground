# Instances for the consul stack

globals "instances" "node1" {
  vm_id       = 111
  tags        = ["ubuntu", "consul-server"]
  address     = "192.168.0.211/24"
  mac_address = "BC:24:11:0C:B2:A1"
}

globals "instances" "node2" {
  vm_id       = 112
  tags        = ["ubuntu", "consul-client"]
  address     = "192.168.0.212/24"
  mac_address = "BC:24:11:0C:B2:A2"
}

globals "instances" "node3" {
  vm_id       = 113
  tags        = ["ubuntu", "consul-client"]
  address     = "192.168.0.213/24"
  mac_address = "BC:24:11:0C:B2:A3"
}
