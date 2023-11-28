/**********
  app vm
**********/

resource "google_compute_instance" "app-server" {
  name         = var.app-server-name
  machine_type = var.machine-type
  zone         = var.zone
  tags         = ["app"]
  boot_disk {
    initialize_params {
      image    = var.machine-image  
      size     = 50  
    }
  }
  network_interface {
    network    = var.vpc-network
    subnetwork = var.app-subnet
    access_config {
      
    } 
  }
  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    service nginx start
  EOF
}
