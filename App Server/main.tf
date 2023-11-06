# creating a vm for app server

resource "google_compute_instance" "app-server" {
  name         = var.app-server-name
  machine_type = var.machine-type
  zone         = var.zone
  tags = [var.app-server-tag]
  boot_disk {
    initialize_params {
      image = var.machine-image  
      size  = 50  
    }
  }

  network_interface {
    network = var.vpc-name
  }
  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    service nginx start
  EOF
}
