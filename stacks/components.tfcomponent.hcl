component "iam" {

    source = "../environment/components/iam"
    inputs = {
      identity_store_id = "d-9f6757948f"
      instance_arn = "arn:aws:sso:::instance/ssoins-65958e61c1eb4310"
  
    }
   providers = {
     aws = provider.aws.this
   }
}