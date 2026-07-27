locals {

  users = {

    nitin = {
      user_name    = "nitin"
      given_name   = "nitin"
      family_name  = "bisht"
      display_name = "nitin bisht"
      email        = "nitin.bisht.work@gmail.com"
      type         = "work"

      groups = [
        "dev"
      ]
    }

    ni3 = {
      user_name    = "ni3"
      given_name   = "ni3"
      family_name  = "ni3"
      display_name = "ni3 ni3"
      email        = "nitin.bisht.connect@gmail.com"
      type         = "work"

      groups = [
        "dev"
      ]
    }

    jatin = {
      user_name = "jatin"
      given_name = "jatin"
      family_name = "Bisht"
      display_name = "jatin bisht"
      email = "bisht007nitin@gmail.com"
      type = "work"

      groups = [
        "dev"
      ]
    }

  }

  groups = {

    dev = {
      display_name = "dev"
      description  = null
    }

  }

  permission_sets = {

    readonly_access = {
      name             = "ReadOnlyAccess"
      description      = null
      session_duration = "PT1H"
    }

  }

  managed_policy_attachments = {

    readonly_access = {
      permission_set     = "readonly_access"
      managed_policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    }

  }

  account_assignments = {

    dev_readonly = {
      group          = "dev"
      permission_set = "readonly_access"
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