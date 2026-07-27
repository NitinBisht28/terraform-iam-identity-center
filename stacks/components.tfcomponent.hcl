component "iam" {

    source = "../environment/components/iam"
   providers = {
     aws = provider.aws.this
   }
}