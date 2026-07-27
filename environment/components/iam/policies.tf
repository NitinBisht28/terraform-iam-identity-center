resource "aws_ssoadmin_managed_policy_attachment" "this" {
  for_each = local.managed_policy_attachments

  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.value.permission_set].arn

  managed_policy_arn = each.value.managed_policy_arn
}