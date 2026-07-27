resource "aws_identitystore_group" "this" {
  for_each          = local.groups
  display_name      = each.value.display_name
  description       = each.value.description
  identity_store_id = var.identity_store_id
}