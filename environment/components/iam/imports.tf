import {
  to = aws_identitystore_user.this["nitin"]
  id = "d-9f6757948f/d1c31d9a-b061-7010-92fe-5229a18e33e7"
}

import {
  to = aws_identitystore_group.this["qa"]
  id = "d-9f6757948f/01838d8a-60e1-7070-d1d0-472fd74ce461"
}

import {
  to = aws_identitystore_group_membership.this["nitin_qa"]
  id = "d-9f6757948f/01b37d1a-1071-7093-4133-c15a414e7af6"
}

import {
  to = aws_ssoadmin_permission_set.this["viewonly_access"]

  id = "arn:aws:sso:::permissionSet/ssoins-65958e61c1eb4310/ps-659523d0486eb41d,arn:aws:sso:::instance/ssoins-65958e61c1eb4310"
}

import {
  to = aws_ssoadmin_managed_policy_attachment.this["viewonly_access"]

  id = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess,arn:aws:sso:::permissionSet/ssoins-65958e61c1eb4310/ps-659523d0486eb41d,arn:aws:sso:::instance/ssoins-65958e61c1eb4310"
}

import {
  to = aws_ssoadmin_account_assignment.this["qa_viewonly"]

  id = "01838d8a-60e1-7070-d1d0-472fd74ce461,GROUP,778948805137,AWS_ACCOUNT,arn:aws:sso:::permissionSet/ssoins-65958e61c1eb4310/ps-659523d0486eb41d,arn:aws:sso:::instance/ssoins-65958e61c1eb4310"
}