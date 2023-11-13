# creating a vm for web server

resource "google_compute_instance" "web-server" {
  name         = var.web-server-name
  machine_type = var.machine-type
  zone         = var.zone
  tags = [var.web-server-tag]
  boot_disk {
    initialize_params {
      image = var.machine-image  
      size  = 50  
    }
  }

  network_interface {
    network = google_compute_network.sample-vpc.id
    subnetwork = google_compute_subnetwork.sample-subnet1.name
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

