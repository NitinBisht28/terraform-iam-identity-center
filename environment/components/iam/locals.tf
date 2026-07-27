locals {

  users = {

    nitin = {
      user_name    = "nitin"
      given_name   = "nitin"
      family_name  = "bisht"
      display_name = "nitin bisht"
      email        = "bisht007nitin@gmail.com"
      type         = "work"

      groups = [
        "qa"
      ]
    }

  }

  groups = {

    qa = {
      display_name = "qa"
      description  = null
    }

  }

  permission_sets = {

    viewonly_access = {
      name             = "ViewOnlyAccess"
      description      = null
      session_duration = "PT1H"
    }

  }

  managed_policy_attachments = {

    viewonly_access = {
      permission_set     = "viewonly_access"
      managed_policy_arn = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
    }

  }

  account_assignments = {

    qa_viewonly = {
      group          = "qa"
      permission_set = "viewonly_access"
      account_id     = "778948805137"
    }

  }

  memberships = {
    for membership in flatten([
      for username, user in local.users : [
        for group in user.groups : {
          key   = "${username}_${group}"
          user  = username
          group = group
        }
      ]
    ]) : membership.key => {
      user  = membership.user
      group = membership.group
    }
  }

}