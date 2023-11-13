# creating a vm for db server

resource "google_compute_instance" "db-server" {
  name         = var.db-server-name
  machine_type = var.machine-type
  zone         = var.zone
  tags = [var.db-server-tag]
  boot_disk {
    initialize_params {
      image = var.machine-image  
      size  = 50  
    }
  }

  network_interface {
    network = google_compute_network.sample-vpc.name
    subnetwork = google_compute_subnetwork.sample-subnet3.name
  }
}
