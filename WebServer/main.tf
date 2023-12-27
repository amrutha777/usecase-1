/**********
  app vm
**********/

resource "google_compute_instance" "web-server" {
  name         = var.web-server-name
  machine_type = var.machine-type
  zone         = var.zone
  tags         = ["web"]
  boot_disk {
    initialize_params {
      image    = var.machine-image  
      size     = 50  
    }
  }
  network_interface {
    network    = var.vpc-network
    subnetwork = var.web-subnet
    access_config {
      
    } 
  }
}

