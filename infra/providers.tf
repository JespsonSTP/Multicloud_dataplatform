#providers are important for creating and managing resources
provider "google" {
  project = var.project
  region  = var.gcp_region
  zone    = var.gcp_zone
}


provider "aws" {
  region  = var.aws_region
}

