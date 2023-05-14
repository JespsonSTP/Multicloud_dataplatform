# Configure and authenticate with the GCP provider
#Deploying resources into GCP requires the use of a service account,
#The credentials argument is responsible for passing in this key to authenticate with GCP and 
#allows Terraform to deploy resources into the specified GCP project.
provider "google" {
  project = var.project
  region = var.region
}

