required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.0"
  }
}

provider "aws" "this" {
  config {
    region = "ap-south-1"
  }
}

variable "identity_store_id" {
  type = string
}

variable "instance_arn" {
  type = string
}