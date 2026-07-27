import {
  to = module.iam.aws_identitystore_user.this["nitin"]
  id = "d-9f6757948f/c173cd4a-d071-70c5-d8d0-093d48804da8"
}

import {
  to = module.iam.aws_identitystore_user.this["ni3"]
  id = "d-9f6757948f/e143cdda-3001-70ea-e8b8-e8f290e5ed01"
}

import {
  to = module.iam.aws_identitystore_group.this["dev"]
  id = "d-9f6757948f/71337d2a-5051-7003-ca21-989f7c37d9fb"
}

import {
  to = module.iam.aws_identitystore_group_membership.this["nitin_dev"]
  id = "d-9f6757948f/e1736dea-e051-7037-41c7-711e01e48f1f"
}

import {
  to = module.iam.aws_identitystore_group_membership.this["ni3_dev"]
  id = "d-9f6757948f/21c39d3a-1031-705c-aeb1-2c3e2426bb9c"
}

import {
  to = module.iam.aws_ssoadmin_permission_set.this["readonly_access"]

  id = "arn:aws:sso:::permissionSet/ssoins-65958e61c1eb4310/ps-6595de18e8428342,arn:aws:sso:::instance/ssoins-65958e61c1eb4310"
}

import {
  to = module.iam.aws_ssoadmin_managed_policy_attachment.this["readonly_access"]

  id = "arn:aws:iam::aws:policy/ReadOnlyAccess,arn:aws:sso:::permissionSet/ssoins-65958e61c1eb4310/ps-6595de18e8428342,arn:aws:sso:::instance/ssoins-65958e61c1eb4310"
}

import {
  to = module.iam.aws_ssoadmin_account_assignment.this["dev_readonly"]

  id = "71337d2a-5051-7003-ca21-989f7c37d9fb,GROUP,778948805137,AWS_ACCOUNT,arn:aws:sso:::permissionSet/ssoins-65958e61c1eb4310/ps-6595de18e8428342,arn:aws:sso:::instance/ssoins-65958e61c1eb4310"
}