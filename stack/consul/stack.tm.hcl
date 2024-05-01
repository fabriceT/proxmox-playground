stack {
  name        = "consul"
  description = "stack pour les conteneurs consul"
  id          = "b97932b9-dc3a-4a15-91be-1de8014d4032"
}

import {
  # TODO: terramate.root.path.fs.absolute ??
  source = "../../imports/lxc_instance.tm.hcl"
}
