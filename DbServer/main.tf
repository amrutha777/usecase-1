/**********
  db vm
**********/

resource "google_compute_instance" "db-server" {
  name         = var.db-server-name
  machine_type = var.machine-type
  zone         = var.zone
  //tags         = ["db"]
  boot_disk {
    initialize_params {
      image    = var.machine-image  
      size     = 50  
    }
  }

  network_interface {
    network    = var.vpc-network
    subnetwork = var.db-subnet
    access_config {
      
    } 
  }
}
