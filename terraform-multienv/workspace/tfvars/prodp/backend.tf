
    terraform {
      backend "s3" {
        bucket = "remote-state-aws-88s-prodp"
        key    = "remote-state.tfstate"   # here .tfstate is optional for readability we can give
        region = "us-east-1"
        encrypt = true
        dynamodb_table = "terraform-locks"
      }
    }
  
