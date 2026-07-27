resource "aws_identitystore_group_membership" "this" {
  identity_store_id = var.identity_store_id
  for_each          = local.memberships
  group_id          = aws_identitystore_group.this[each.value.group].group_id
  member_id         = aws_identitystore_user.this[each.value.user].user_id
}