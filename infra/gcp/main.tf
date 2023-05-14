module "dataLake" {
  source        = "./modules/datalake"                    
  namespace     = var.namespace                   
}



# Configure the Compute Engine instance
# Compute Engine Instance
resource "google_compute_instance" "server1" {
  name = "instance-one"
  machine_type = "f1-micro"
  zone = "us-central1-a"
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}