resource "aws_ssoadmin_account_assignment" "this" {
  for_each = local.account_assignments

  instance_arn = var.instance_arn

  permission_set_arn = aws_ssoadmin_permission_set.this[
    each.value.permission_set
  ].arn

  principal_id = aws_identitystore_group.this[
    each.value.group
  ].group_id

  principal_type = "GROUP"

  target_id   = each.value.account_id
  target_type = "AWS_ACCOUNT"
}
