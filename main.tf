module "iam" {
  source = "./environment/components/iam"

  identity_store_id = var.identity_store_id
  instance_arn      = var.instance_arn

}