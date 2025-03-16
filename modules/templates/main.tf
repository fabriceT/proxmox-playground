resource "proxmox_virtual_environment_download_file" "template" {
  for_each = var.templates

  datastore_id = var.datastore_id
  node_name    = var.node_name

  content_type        = each.value.content_type
  overwrite           = true #each.value.overwrite
  overwrite_unmanaged = true
  url                 = each.value.source_file
}
