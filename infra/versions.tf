terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.5.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }
}
/*
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.47"
    }
  }
  backend "s3" {
    bucket          = "chefapp-eks-lca8nfyg64p6-state-bucket"
    key             = "chefapp-eks-lca8nfyg64p6-state-bucket/terraform.tfstate"
    dynamodb_table  = "chefapp-eks-lca8nfyg64p6-state-lock"
    region          = "us-east-2"
  }
}

*/