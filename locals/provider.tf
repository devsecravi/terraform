terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.42.0"
    }
    
  }
  backend "s3"{
        bucket         = "remote-state-terraform-88s"
        key            = "locals-demos.tfstate"
        region         = "us-east-1"
        encrypt        = true
        use_lockfile   = true
  }
}

provider "aws" {
  region = "us-east-1"
}