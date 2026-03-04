terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"   # Terraform aws version
    }
  }


# Below block is to set remote state setup to lock file in S3 bucket

  backend "s3" {
    bucket = "remote-state-daws-88s"
    key    = "locals-demo"   # here key name should be unique and it should be copied from other
    region = "us-east-1"
    encrypt = true
    use_lockfile = true 
  }

}

provider "aws" {

    region = "us-east-1"
  
}