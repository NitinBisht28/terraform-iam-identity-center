required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.0"
  }
}
variable "access_key" {
  description = "AWS access key"
  sensitive = true
  type        = string
  ephemeral   = true
}

variable "secret_key" {
  description = "AWS sensitive secret key."
  type        = string
  sensitive   = true
  ephemeral   = true
}  

provider "aws" "this" {
  config {
    region = "ap-south-1"
    access_key = var.access_key
    secret_key = var.secret_key
  }
}

variable "identity_store_id" {
  type = string
}

variable "instance_arn" {
  type = string
}