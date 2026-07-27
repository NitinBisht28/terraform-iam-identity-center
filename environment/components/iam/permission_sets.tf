resource "aws_ssoadmin_permission_set" "this" {
  for_each         = local.permission_sets
  name             = each.value.name
  description      = each.value.description
  instance_arn     = var.instance_arn
  session_duration = each.value.session_duration

  lifecycle {
    prevent_destroy = true
  }
}